using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;

namespace EAA.Models;

[Table("note")]
[PrimaryKey(nameof(Id))]
public class Note
{
    public int Id { get; set; }
    [Required]
    public string Text { get; set; } = "";
    [Required]
    public DateTime Date { get; set; }
}

[Table("Measurement")]
[PrimaryKey(nameof(Measurement_ID))]
public class Measurement
{
    public int Measurement_ID { get; set; }
    public int Site_ID { get; set; }
    public DateTime Timestamp { get; set; }
}

[Table("Site")]
[PrimaryKey(nameof(Site_ID))]
public class Site
{
    public int Site_ID { get; set; }
    public string Site_Name { get; set; } = "";
    public double Latitude { get; set; }
    public double Longitude { get; set; }
    public string Elevation { get; set; } = "";
    public string Site_Type { get; set; } = "";
}


[Table("WeatherMeasurement")]
[PrimaryKey(nameof(Measurement_ID))]
public class WeatherMeasurement
{
    public int Measurement_ID { get; set; }
    public double Temperature { get; set; }
    public double Humidity { get; set; }
    public double Wind_Speed { get; set; }
    public double Wind_Direction { get; set; }
}

[Table("AirQualityMeasurement")]
[PrimaryKey(nameof(Measurement_ID), nameof(Pollutant_ID))]
public class AirQualityMeasurement
{
    public int Measurement_ID { get; set; }
    public int Pollutant_ID { get; set; }
    public double Pollutant_Concentration { get; set; }
}

[Table("WaterQualityMeasurement")]
[PrimaryKey(nameof(Measurement_ID), nameof(Contaminant_ID))]
public class WaterQualityMeasurement
{
    public int Measurement_ID { get; set; }
    public int Contaminant_ID { get; set; }
    public double Contaminant_Concentration { get; set; }
}
