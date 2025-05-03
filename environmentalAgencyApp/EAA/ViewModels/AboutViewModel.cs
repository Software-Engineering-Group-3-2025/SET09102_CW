using CommunityToolkit.Mvvm.Input;
using System.Windows.Input;
    
namespace EAA.ViewModels;
    
internal class AboutViewModel
{
    public string Title => AppInfo.Name;
    public string Version => AppInfo.VersionString;
    public string MoreInfoUrl => "https://github.com/Software-Engineering-Group-3-2025/SET09102_CW";
    public string Message => "This app is written in XAML and C# with .NET MAUI.";
    public ICommand ShowMoreInfoCommand { get; }
    
    public AboutViewModel()
    {
        ShowMoreInfoCommand = new AsyncRelayCommand(ShowMoreInfo);
    }
    
    async Task ShowMoreInfo() =>
        await Launcher.Default.OpenAsync(MoreInfoUrl);
}
