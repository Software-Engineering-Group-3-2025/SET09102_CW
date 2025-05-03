using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xunit;
using EAA.Models; // For Note
using EAA.Data;   // For NotesDbContext

namespace Tests
{
    public class DatabaseTests : IDisposable
    {
        private readonly NotesDbContext _dbContext;

        public DatabaseTests()
        {
            // Set up an in-memory database for testing
            var options = new DbContextOptionsBuilder<NotesDbContext>()
                .UseInMemoryDatabase(databaseName: "TestDatabase")
                .Options;

            _dbContext = new NotesDbContext(options);
        }

        public void Dispose()
        {
            // Clean up the database after each test
            _dbContext.Database.EnsureDeleted();
            _dbContext.Dispose();
        }

        [Fact]
        public async Task Database_CanInsertAndRetrieveNote()
        {
            // Arrange
            var testNote = new Note
            {
                Text = "Test Note",
                Date = DateTime.Now
            };

            // Act
            _dbContext.Notes.Add(testNote);
            await _dbContext.SaveChangesAsync();

            var retrievedNote = await _dbContext.Notes.FirstOrDefaultAsync(n => n.Text == "Test Note");

            // Assert
            Assert.NotNull(retrievedNote);
            Assert.Equal(testNote.Text, retrievedNote.Text);
            Assert.Equal(testNote.Date, retrievedNote.Date);
        }

        [Fact]
        public async Task Database_ReturnsNull_ForNonexistentNote()
        {
            // Act
            var result = await _dbContext.Notes.FirstOrDefaultAsync(n => n.Text == "Nonexistent Note");

            // Assert
            Assert.Null(result);
        }
    }
}
