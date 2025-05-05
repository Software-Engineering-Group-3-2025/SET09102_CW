using EAA.ViewModels;

namespace EAA.Views;

public partial class SensorsPage : ContentPage
{
    public SensorsPage()
    {
        InitializeComponent();
        BindingContext = new SensorsPageViewModel();
    }
}
