using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using EAA.Models;

namespace EAA.ViewModels;

public partial class SensorsPageViewModel : ObservableObject
{
    public ObservableCollection<SensorModel> Sensors { get; } = new();
    [ObservableProperty]
private string sensorHeader = "Select a sensor category";


    [RelayCommand]
    private void CheckAirSensors()
    {
        SensorHeader = "Air Sensors";
        Sensors.Clear();
        Sensors.Add(new SensorModel("Air Sensor A1", true, DateTime.Now.AddDays(-14), DateTime.Now.AddDays(16), false));
        Sensors.Add(new SensorModel("Air Sensor A2", false, DateTime.Now.AddDays(-30), DateTime.Now.AddDays(0), true));
    }

    [RelayCommand]
    private void CheckWaterSensors()
    {
        SensorHeader = "Water Sensors";
        Sensors.Clear();
        Sensors.Add(new SensorModel("Water Sensor W1", true, DateTime.Now.AddDays(-10), DateTime.Now.AddDays(20), false));
        Sensors.Add(new SensorModel("Water Sensor W2", true, DateTime.Now.AddDays(-40), DateTime.Now.AddDays(-1), true));
    }

    [RelayCommand]
    private void CheckWeatherSensors()
    {
        SensorHeader = "Weather Sensors";
        Sensors.Clear();
        Sensors.Add(new SensorModel("Weather Sensor WS1", true, DateTime.Now.AddDays(-5), DateTime.Now.AddDays(25), false));
        Sensors.Add(new SensorModel("Weather Sensor WS2", false, DateTime.Now.AddDays(-20), DateTime.Now.AddDays(5), true));
    }

}
