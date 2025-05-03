using EAA.ViewModels;

 namespace EAA.Views;

 public partial class AllNotesPage : ContentPage
 {
 	public AllNotesPage(AllNotesViewModel viewModel)
 	{
 		this.BindingContext = viewModel;
 		InitializeComponent();
 	}

 	private void ContentPage_NavigatedTo(object sender, NavigatedToEventArgs e)
 	{
 		notesCollection.SelectedItem = null;
 	}

 }
 