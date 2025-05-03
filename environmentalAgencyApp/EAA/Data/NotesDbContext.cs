using Microsoft.EntityFrameworkCore;
using EAA.Models;

namespace EAA.Data
{
    public class NotesDbContext : DbContext
    {
        public NotesDbContext(DbContextOptions<NotesDbContext> options) : base(options)
        { }

        public DbSet<Note> Notes { get; set; } = default!;

        // Additional DB gets and sets to fetch data from the notesdb 
        public DbSet<Measurement> Measurements { get; set; } = default!;
        public DbSet<Site> Sites { get; set; } = default!;
        public DbSet<WeatherMeasurement> WeatherMeasurements { get; set; } = default!;
        public DbSet<AirQualityMeasurement> AirQualityMeasurements { get; set; } = default!;
        public DbSet<WaterQualityMeasurement> WaterQualityMeasurements { get; set; } = default!;
protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<WeatherMeasurement>().ToTable("WeatherMeasurement");
            modelBuilder.Entity<Measurement>().ToTable("Measurement");
            modelBuilder.Entity<Site>().ToTable("Site");
            modelBuilder.Entity<AirQualityMeasurement>().ToTable("AirQualityMeasurement");
            modelBuilder.Entity<WaterQualityMeasurement>().ToTable("WaterQualityMeasurement");
        }

    }
}
