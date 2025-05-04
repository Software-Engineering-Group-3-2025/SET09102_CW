using CommunityToolkit.Mvvm.Input;
using EAA.Data;
using System.Collections.ObjectModel;
using System.Windows.Input;

namespace EAA.ViewModels;

public class AllNotesViewModel : IQueryAttributable
{
    public ObservableCollection<NoteViewModel> AllNotes { get; }
    public ICommand NewCommand { get; }
    public ICommand SelectNoteCommand { get; }

    private NotesDbContext _context;
public AllNotesViewModel(NotesDbContext notesContext)
{
    _context = notesContext;

#if WINDOWS
    AllNotes = new ObservableCollection<NoteViewModel>(
        _context.Notes.ToList().Select(n => new NoteViewModel(_context, n))
    );
#else
    AllNotes = new ObservableCollection<NoteViewModel>(); // empty on Android
#endif

    NewCommand = new AsyncRelayCommand(NewNoteAsync);
    SelectNoteCommand = new AsyncRelayCommand<NoteViewModel>(SelectNoteAsync);
}

/*Added method to load notes after app is ready
// This method is called when the app is ready to load notes
// It retrieves all notes from the database and populates the AllNotes collection
*/
    public async Task LoadNotesAsync()
{
    var notes = _context.Notes.ToList();
    AllNotes.Clear();

    foreach (var note in notes)
    {
        AllNotes.Add(new NoteViewModel(_context, note));
    }
}


    private async Task NewNoteAsync()
    {
        await Shell.Current.GoToAsync(nameof(Views.NotePage));
    }

    private async Task SelectNoteAsync(ViewModels.NoteViewModel note)
    {
        if (note != null)
            await Shell.Current.GoToAsync($"{nameof(Views.NotePage)}?load={note.Id}");
    }

    void IQueryAttributable.ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.ContainsKey("deleted"))
        {
            string noteId = query["deleted"].ToString();
            NoteViewModel matchedNote = AllNotes.Where((n) => n.Id == int.Parse(noteId)).FirstOrDefault();

            // If note exists, delete it
            if (matchedNote != null)
                AllNotes.Remove(matchedNote);
        }
        else if (query.ContainsKey("saved"))
        {
            string noteId = query["saved"].ToString();
            NoteViewModel matchedNote = AllNotes.Where((n) => n.Id == int.Parse(noteId)).FirstOrDefault();

            // If note is found, update it
            if (matchedNote != null)
            {
                matchedNote.Reload();
                AllNotes.Move(AllNotes.IndexOf(matchedNote), 0);
            }
            // If note isn't found, it's new; add it.
            else
                AllNotes.Insert(0, new NoteViewModel(_context, _context.Notes.Single(n => n.Id == int.Parse(noteId))));
        }
    }
}
