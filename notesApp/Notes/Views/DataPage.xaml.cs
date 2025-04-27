using Notes.Data;
using Notes.Models;
using Notes.ViewModels;
using Microsoft.EntityFrameworkCore;  // You forgot this using

namespace Notes.Views
{
    public partial class DataPage : ContentPage
    {
        private readonly NotesDbContext _dbContext;

        public DataPage(NotesDbContext dbContext)
        {
            InitializeComponent();
            _dbContext = dbContext;
            this.BindingContext = new EnvironmentalScientistViewModel();
        }

        private async void OnWeatherDataClicked(object sender, EventArgs e)
		{
    		var weatherData = await (from w in _dbContext.WeatherMeasurements
                             join m in _dbContext.Measurements on w.Measurement_ID equals m.Measurement_ID
                             join s in _dbContext.Sites on m.Site_ID equals s.Site_ID
                             select new DataRow
                             {
                                 Column1 = $"{s.Site_Name}, {m.Timestamp:yyyy-MM-dd HH:mm}",
                                 Column2 = $"{w.Temperature}°C, / {w.Humidity}%",
                                 Column3 = $"{w.Wind_Speed} m/s",
                                 Column4 = $"{w.Wind_Direction}°"
                             }).ToListAsync();
    		
			// Set the header label text to "Weather Data"
			HeaderLabel.Text = "Weather Data";
			Column1Label.Text = "Location / Timestamp";
			Column2Label.Text = "Temperature / Humidity";
			Column3Label.Text = "Wind Speed";
			Column4Label.Text = "Wind Direction";
			// Set the ItemsSource of the CollectionView to the weather data
    		DataCollectionView.ItemsSource = weatherData;
		}


        private async void OnWaterQualityDataClicked(object sender, EventArgs e)
        {
            var waterData = await (from w in _dbContext.WaterQualityMeasurements
                             join m in _dbContext.Measurements on w.Measurement_ID equals m.Measurement_ID
                             join s in _dbContext.Sites on m.Site_ID equals s.Site_ID
                             select new DataRow
            				{
								Column1 = $"{s.Site_Name}, {m.Timestamp:yyyy-MM-dd HH:mm}",
                				Column2 = $"\t{w.Contaminant_ID}",
                				Column3 = $"{w.Contaminant_Concentration}",
                				Column4 = $"{w.Measurement_ID}"
            				}).ToListAsync();

			// Set the header label text to "Water Quality Data"
			HeaderLabel.Text = "Water Quality Data"; 
			Column1Label.Text = "Location / Timestamp";
			Column2Label.Text = "Contaminant ID";
			Column3Label.Text = "Concentration";
			Column4Label.Text = "Measurement ID";
            DataCollectionView.ItemsSource = waterData;
        }

        private async void OnAirQualityDataClicked(object sender, EventArgs e)
        {
            var airData = await _dbContext.AirQualityMeasurements.ToListAsync();

            var data = airData.Select(a => new DataRow
            {
                Column1 = $"Pollutant ID: {a.Pollutant_ID}",
                Column2 = $"Concentration: {a.Pollutant_Concentration}",
                Column3 = $"Measurement ID: {a.Measurement_ID}",
                Column4 = "Air Quality"
            }).ToList();
			// Set the header label text to "Air Quality Data"
			HeaderLabel.Text = "Air Quality Data";
			Column1Label.Text = "Pollutant ID";
			Column2Label.Text = "Concentration";
			Column3Label.Text = "Measurement ID";
			Column4Label.Text = "Air Quality";
            DataCollectionView.ItemsSource = data;
        }

        public class DataRow
        {
			public string Header { get; set; } = string.Empty;
            public string Column1 { get; set; }
            public string Column2 { get; set; }
            public string Column3 { get; set; }
            public string Column4 { get; set; }
        }
    }
}


