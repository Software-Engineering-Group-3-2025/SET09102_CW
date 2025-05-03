using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;
// Adjust imports based on your project

namespace Tests
{
    public class DatabaseTests
    {
        private IDatabase _database;
        
        public DatabaseTests()
        {
            // Set up a test database - ideally this would be an in-memory or test-specific database
            _database = new TestDatabase();
        }
        
        private void Cleanup()
        {
            // Clean up test data
            (_database as TestDatabase)?.ClearTestData();
        }
        
        [Fact]
        public async Task Database_CanInsertAndRetrieveData()
        {
            try
            {
                // Arrange
                var testData = new EnvironmentalData
                {
                    Location = "Test Site",
                    Date = DateTime.Now,
                    Temperature = 22.5f,
                    Humidity = 60,
                    Notes = "Test measurement"
                };
                
                // Act
                await _database.SaveEnvironmentalDataAsync(testData);
                var retrievedData = await _database.GetEnvironmentalDataAsync("Test Site", testData.Date);
                
                // Assert
                Assert.NotNull(retrievedData);
                Assert.Equal(testData.Location, retrievedData.Location);
                Assert.Equal(testData.Temperature, retrievedData.Temperature);
                Assert.Equal(testData.Humidity, retrievedData.Humidity);
            }
            finally
            {
                Cleanup();
            }
        }
        
        [Fact]
        public async Task Database_ReturnsNull_ForNonexistentData()
        {
            try
            {
                // Arrange
                var nonexistentLocation = "Nowhere";
                
                // Act
                var result = await _database.GetEnvironmentalDataAsync(nonexistentLocation, DateTime.Now);
                
                // Assert
                Assert.Null(result);
            }
            finally
            {
                Cleanup();
            }
        }
    }
    
    // Simple test database implementation for tests
    public class TestDatabase : IDatabase
    {
        private readonly List<EnvironmentalData> _data = new List<EnvironmentalData>();
        
        public Task<EnvironmentalData> GetEnvironmentalDataAsync(string location, DateTime date)
        {
            var result = _data.FirstOrDefault(d => 
                d.Location == location && 
                d.Date.Date == date.Date);
                
            return Task.FromResult(result);
        }
        
        public Task SaveEnvironmentalDataAsync(EnvironmentalData data)
        {
            _data.Add(data);
            return Task.CompletedTask;
        }
        
        public void ClearTestData()
        {
            _data.Clear();
        }
    }
}
