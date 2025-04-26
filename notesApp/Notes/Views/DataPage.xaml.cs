namespace Notes.Views;

public partial class DataPage : ContentPage
{
	public DataPage()
	{
		this.BindingContext = new ViewModels.EnvironmentalScientistViewModel();
		InitializeComponent();
	}
	private void OnWaterQualityDataClicked(object sender, EventArgs e)
	{
		// Navigate to the DataPage
		DisplayAlert("Water Quality Data", "Water quality data is not available at this time.", "OK");
	}

	private void OnAirQualityDataClicked(object sender, EventArgs e)
	{
		// Navigate to the DataPage
		DisplayAlert("Air Quality Data", "Air quality data is not available at this time.", "OK");
	}
	private void OnWeatherDataClicked(object sender, EventArgs e)
	{
		// Navigate to the DataPage
		DisplayAlert("Weather Data", "Weather data is not available at this time.", "OK");
	}

}

