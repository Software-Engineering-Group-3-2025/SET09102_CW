using Notes.ViewModels;

 namespace Notes.Views;

 public partial class AboutPage : ContentPage
 {
 	public AboutPage()
 	{
 		this.BindingContext = new AboutViewModel();
 		InitializeComponent();
 	}
 }
 