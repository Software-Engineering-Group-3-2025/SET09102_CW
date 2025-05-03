using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xunit;
// Adjust imports based on your project

namespace Tests
{
    public class DataServiceTests
    {
        private IDataService _dataService;
        
        public DataServiceTests()
        {
            // Set up a mock or test instance of your data service
            _dataService = new MockDataService();
        }
        
        [Fact]
        public async Task GetEnvironmentalData_ReturnsValidResults()
        {
            // Arrange
            var testDate = DateTime.Now.AddDays(-7);
            var location = "Test Location";
            
            // Act
            var results = await _dataService.GetEnvironmentalDataAsync(location, testDate);
            
            // Assert
            Assert.NotNull(results);
            Assert.True(results.Count > 0);
            Assert.Equal(location, results[0].Location);
        }
        
        [Fact]
        public async Task GetEnvironmentalData_HandlesInvalidLocation()
        {
            // Arrange
            var invalidLocation = "NonexistentLocation";
            
            // Act
            var results = await _dataService.GetEnvironmentalDataAsync(invalidLocation, DateTime.Now);
            
            // Assert
            Assert.NotNull(results);
            Assert.Equal(0, results.Count);
        }
    }
    
    // Mock implementation for testing
    public class MockDataService : IDataService
    {
        public Task<List<EnvironmentalData>> GetEnvironmentalDataAsync(string location, DateTime date)
        {
            var results = new List<EnvironmentalData>();
            
            if (location == "Test Location")
            {
                results.Add(new EnvironmentalData
                {
                    Location = location,
                    Date = date,
                    Temperature = 25.5f,
                    Humidity = 65
                });
            }
            
            return Task.FromResult(results);
        }
    }
}
