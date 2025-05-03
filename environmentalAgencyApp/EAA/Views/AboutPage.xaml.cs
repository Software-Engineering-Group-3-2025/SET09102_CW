using EAA.ViewModels;

 namespace EAA.Views;

 public partial class AboutPage : ContentPage
 {
 	public AboutPage()
 	{
 		this.BindingContext = new AboutViewModel();
 		InitializeComponent();
 	}
 }
 