using Microsoft.Extensions.Logging;
using System.Reflection;
using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using EAA.Data;
using EAA.ViewModels;
using EAA.Views;

namespace EAA;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

		var assembly = Assembly.GetExecutingAssembly();
		var resourceName = assembly
			.GetManifestResourceNames()
			.FirstOrDefault(name => name.EndsWith("appsettings.json", StringComparison.OrdinalIgnoreCase));

		IConfigurationRoot? config = null;
		string? connectionString = null;

		if (resourceName is not null)
		{
			using var stream = assembly.GetManifestResourceStream(resourceName);
			if (stream is not null)
			{
				config = new ConfigurationBuilder()
					.AddJsonStream(stream)
					.Build();

				connectionString = config.GetConnectionString("DevelopmentConnection");
			}
			else
			{
				Console.WriteLine("⚠️ appsettings.json found in resources but could not be read."); // added for debuging 
			}
		}
		else
		{
			Console.WriteLine("⚠️ appsettings.json not found in embedded resources."); // added for debuging
		}

		if (config is not null && connectionString is not null)
		{
			builder.Configuration.AddConfiguration(config);
			builder.Services.AddDbContext<NotesDbContext>(options => options.UseSqlServer(connectionString));
		}

		builder.Services.AddSingleton<AllNotesViewModel>();
		builder.Services.AddTransient<NoteViewModel>();
		builder.Services.AddSingleton<AllNotesPage>();
		builder.Services.AddTransient<NotePage>();
		builder.Services.AddTransient<DataPage>();

#if DEBUG
		builder.Logging.AddDebug();
#endif
		try
		{
			var app = builder.Build();
			ServiceHelper.ServiceProvider = app.Services;
			return app;
		}
		catch (Exception ex)
		{
			Console.WriteLine("❌ Failed to build app: " + ex);
			throw;
		}

	}
}
