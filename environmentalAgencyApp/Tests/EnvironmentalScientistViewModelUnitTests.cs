using System.Threading.Tasks;
using Xunit;
using EAA.ViewModels; // For EnvironmentalScientistViewModel

namespace Tests
{
    public class EnvironmentalScientistViewModelTests
    {
        [Fact]
        public async Task OpenMapCommand_ExecutesSuccessfully()
        {
            // Arrange
            var viewModel = new EnvironmentalScientistViewModel();

            // Act
            var task = viewModel.OpenMapCommand.ExecuteAsync(null);

            // Assert
            Assert.NotNull(task);
            await task; // Ensure the task completes without exceptions
        }

        [Fact]
        public async Task OpenWeatherAlertsCommand_ExecutesSuccessfully()
        {
            // Arrange
            var viewModel = new EnvironmentalScientistViewModel();

            // Act
            var task = viewModel.OpenWeatherAlertsCommand.ExecuteAsync(null);

            // Assert
            Assert.NotNull(task);
            await task; // Ensure the task completes without exceptions
        }

        [Fact]
        public async Task ManageSensorsCommand_DisplaysAlert()
        {
            // Arrange
            var viewModel = new EnvironmentalScientistViewModel();

            // Act
            var task = viewModel.ManageSensorsCommand.ExecuteAsync(null);

            // Assert
            Assert.NotNull(task);
            await task; // Ensure the task completes without exceptions
            // Note: To fully test the alert, you would need to mock `Shell.Current.DisplayAlert`.
        }

        [Fact]
        public async Task GenerateReportsCommand_DisplaysAlert()
        {
            // Arrange
            var viewModel = new EnvironmentalScientistViewModel();

            // Act
            var task = viewModel.GenerateReportsCommand.ExecuteAsync(null);

            // Assert
            Assert.NotNull(task);
            await task; // Ensure the task completes without exceptions
            // Note: To fully test the alert, you would need to mock `Shell.Current.DisplayAlert`.
        }

        [Fact]
        public async Task ViewDataCommand_NavigatesToDataPage()
        {
            // Arrange
            var viewModel = new EnvironmentalScientistViewModel();

            // Act
            var task = viewModel.ViewDataCommand.ExecuteAsync(null);

            // Assert
            Assert.NotNull(task);
            await task; // Ensure the task completes without exceptions
            // Note: To fully test navigation, you would need to mock `Shell.Current.GoToAsync`.
        }
    }
}
