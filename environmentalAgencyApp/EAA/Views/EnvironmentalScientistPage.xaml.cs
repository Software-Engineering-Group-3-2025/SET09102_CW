namespace EAA.Views;

public partial class EnvironmentalScientistPage : ContentPage
{
	public EnvironmentalScientistPage()
	{
		InitializeComponent();
		this.BindingContext = new ViewModels.EnvironmentalScientistViewModel();
	}

	private async void OnViewDataClicked(object sender, EventArgs e)
	{
		var page = ServiceHelper.GetService<DataPage>();
		await Navigation.PushAsync(page);

	}
	/*Alert Button - Link to Met Office */
	private async void OnWeatherStationClicked(object sender, EventArgs e)
	{
		// Open the weather station link
		var weatherStationUrl = "https://weather.metoffice.gov.uk/warnings-and-advice/uk-warnings";
		await Launcher.Default.OpenAsync(weatherStationUrl);
	}
	/*Maps Button - Link to Weather station - Calton hill place holder (google Maps)*/
	private async void OnMapViewClicked(object sender, EventArgs e)
	{
		// Google Maps URL for Calton Hill Weather Center (approximate coordinates)
		var locationUrl = "https://www.google.com/maps?q=55.9556,-3.1828";

		// Open the link
		await Launcher.Default.OpenAsync(locationUrl);
	}
}

