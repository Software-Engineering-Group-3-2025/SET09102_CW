using EAA.Views;
namespace EAA;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();
        Routing.RegisterRoute(nameof(DataPage), typeof(DataPage));
        Routing.RegisterRoute(nameof(SensorsPage), typeof(SensorsPage));

    }
}

