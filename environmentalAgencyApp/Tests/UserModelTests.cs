using System;
using System.Collections.Generic;
using System.Linq;
using Xunit;
// Assuming you have a Models namespace with appropriate classes
// You'll need to adjust these imports based on your actual project structure

namespace Tests
{
    public class UserModelTests
    {
        [Fact]
        public void User_HasValidProperties_AfterInitialization()
        {
            // Arrange
            var username = "scientist1";
            var role = "Environmental Scientist";
            
            // Act
            var user = new User
            {
                Username = username,
                Role = role,
                DateCreated = DateTime.Now
            };
            
            // Assert
            Assert.Equal(username, user.Username);
            Assert.Equal(role, user.Role);
            Assert.True(user.DateCreated <= DateTime.Now);
        }
        
        [Fact]
        public void User_Validation_FailsWithEmptyUsername()
        {
            // Arrange
            var user = new User
            {
                Username = "",
                Role = "Administrator"
            };
            
            // Act
            var isValid = user.Validate();
            
            // Assert
            Assert.False(isValid);
        }
    }
}
