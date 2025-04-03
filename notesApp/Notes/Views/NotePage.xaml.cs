using Notes.ViewModels;

namespace Notes.Views;

public partial class NotePage : ContentPage
{
	public NotePage(NoteViewModel viewModel)
	{
		this.BindingContext = viewModel;
		InitializeComponent();
	}

}