using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;
using EAA.Models; // For Note
using EAA.Data;   // For NotesDbContext
using Microsoft.EntityFrameworkCore;

namespace Tests
{
    public class DataServiceTests
    {
        private readonly NotesDbContext _dbContext;

        public DataServiceTests()
        {
            // Set up an in-memory database for testing
            var options = new DbContextOptionsBuilder<NotesDbContext>()
                .UseInMemoryDatabase(databaseName: "TestDatabase")
                .Options;

            _dbContext = new NotesDbContext(options);
        }

        [Fact]
        public async Task GetNotes_ReturnsValidResults()
        {
            // Arrange
            var testNote = new Note
            {
                Text = "Test Note",
                Date = DateTime.Now
            };
            _dbContext.Notes.Add(testNote);
            await _dbContext.SaveChangesAsync();

            // Act
            var result = await _dbContext.Notes.FirstOrDefaultAsync(n => n.Text == "Test Note");

            // Assert
            Assert.NotNull(result);
            Assert.Equal(testNote.Text, result.Text);
        }

        [Fact]
        public async Task GetNotes_HandlesInvalidNote()
        {
            // Act
            var result = await _dbContext.Notes.FirstOrDefaultAsync(n => n.Text == "Nonexistent Note");

            // Assert
            Assert.Null(result);
        }

        [Fact]
        public async Task SaveNote_SavesDataCorrectly()
        {
            // Arrange
            var testNote = new Note
            {
                Text = "New Note",
                Date = DateTime.Now
            };

            // Act
            _dbContext.Notes.Add(testNote);
            await _dbContext.SaveChangesAsync();

            var result = await _dbContext.Notes.FirstOrDefaultAsync(n => n.Text == "New Note");

            // Assert
            Assert.NotNull(result);
            Assert.Equal(testNote.Text, result.Text);
        }
    }
}
