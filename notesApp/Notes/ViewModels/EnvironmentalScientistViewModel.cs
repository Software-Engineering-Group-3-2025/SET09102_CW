using CommunityToolkit.Mvvm.ComponentModel;
using System.Windows.Input;
using CommunityToolkit.Mvvm.Input;
using System.Threading.Tasks;
using Notes.Models;
using Notes.Data;

namespace Notes.ViewModels
{
    public partial class EnvironmentalScientistViewModel : ObservableObject
    {
		        
		[ObservableProperty]
		public string title = AppInfo.Name;

		[ObservableProperty]
		public string version = AppInfo.VersionString;

		[RelayCommand]
		private async Task OpenMap()
        {
            var locationUrl = "https://www.google.com/maps?q=55.9556,-3.1828";
            await Launcher.Default.OpenAsync(locationUrl);
        }
		[RelayCommand]
        private async Task OpenWeatherAlerts()
        {
            var weatherUrl = "https://weather.metoffice.gov.uk/warnings-and-advice/uk-warnings";
            await Launcher.Default.OpenAsync(weatherUrl);
        }
		[RelayCommand]
        private async Task ManageSensors()
        {
            // Placeholder text for manage sensors functionality
			// In a real application, this would be replaced with actual functionality
            await Shell.Current.DisplayAlert("Manage Sensors", "Manage sensors functionality will come here.", "OK");
        }
		[RelayCommand]
        private async Task GenerateReports()
        {
            await Shell.Current.DisplayAlert("Reports", "Report generation coming soon.", "OK");
        }
		[RelayCommand]
        private async Task ViewData()
        {
            await Shell.Current.GoToAsync(nameof(Views.DataPage));
        }
    }
}

