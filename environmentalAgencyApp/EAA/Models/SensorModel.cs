using CommunityToolkit.Mvvm.ComponentModel;
using System;

namespace EAA.Models;

public partial class SensorModel : ObservableObject
{
    public SensorModel(string name, bool isOnline, DateTime lastCheck, DateTime nextCheck, bool isFaulty)
    {
        Name = name;
        IsOnline = isOnline;
        LastMaintenance = lastCheck;
        NextMaintenance = nextCheck;
        IsFaulty = isFaulty;
    }

    [ObservableProperty] private string name;
    [ObservableProperty] private bool isOnline;
    [ObservableProperty] private DateTime lastMaintenance;
    [ObservableProperty] private DateTime nextMaintenance;
    [ObservableProperty] private bool isFaulty;
}
