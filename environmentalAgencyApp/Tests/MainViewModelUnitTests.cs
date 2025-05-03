using System.ComponentModel;
using System.Threading.Tasks;
using Xunit;
// Adjust imports based on your project

namespace Tests
{
    public class MainViewModelTests
    {
        private MainViewModel _viewModel;
        private MockDataService _mockDataService;
        
        public MainViewModelTests()
        {
            _mockDataService = new MockDataService();
            _viewModel = new MainViewModel(_mockDataService);
        }
        
        [Fact]
        public void ViewModel_PropertyChangedRaised_WhenDataChanges()
        {
            // Arrange
            bool propertyChangedRaised = false;
            string propertyChanged = null;
            
            _viewModel.PropertyChanged += (sender, e) => {
                propertyChangedRaised = true;
                propertyChanged = e.PropertyName;
            };
            
            // Act
            _viewModel.Title = "New Title";
            
            // Assert
            Assert.True(propertyChangedRaised);
            Assert.Equal("Title", propertyChanged);
        }
        
        [Fact]
        public async Task LoadDataCommand_LoadsData_WhenExecuted()
        {
            // Arrange
            _viewModel.SelectedLocation = "Test Location";
            
            // Act
            await _viewModel.LoadDataCommand.ExecuteAsync();
            
            // Assert
            Assert.NotNull(_viewModel.EnvironmentalData);
            Assert.True(_viewModel.EnvironmentalData.Count > 0);
            Assert.False(_viewModel.IsLoading);
        }
        
        [Fact]
        public async Task LoadDataCommand_HandlesMissingData_Gracefully()
        {
            // Arrange
            _viewModel.SelectedLocation = "NonexistentLocation";
            
            // Act
            await _viewModel.LoadDataCommand.ExecuteAsync();
            
            // Assert
            Assert.NotNull(_viewModel.EnvironmentalData);
            Assert.Equal(0, _viewModel.EnvironmentalData.Count);
            Assert.False(_viewModel.IsLoading);
            Assert.True(_viewModel.HasError);
        }
    }
}
