using EAA.ViewModels;

 namespace EAA.Views;

 public partial class NotePage : ContentPage
 {
 	public NotePage(NoteViewModel viewModel)
 	{
 		this.BindingContext = viewModel;
 		InitializeComponent();
 	}

}
