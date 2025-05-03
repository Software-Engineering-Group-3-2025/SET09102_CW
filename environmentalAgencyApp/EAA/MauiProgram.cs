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

 		var a = Assembly.GetExecutingAssembly();
 		using var stream = a.GetManifestResourceStream("EAA.appsettings.json");

 		var config = new ConfigurationBuilder()
 			.AddJsonStream(stream)
 			.Build();

 		builder.Configuration.AddConfiguration(config);

 		var connectionString = builder.Configuration.GetConnectionString("DevelopmentConnection");
		builder.Services.AddDbContext<NotesDbContext>(options => options.UseSqlServer(connectionString));
		builder.Services.AddSingleton<AllNotesViewModel>();
 		builder.Services.AddTransient<NoteViewModel>();
 		builder.Services.AddSingleton<AllNotesPage>();
 		builder.Services.AddTransient<NotePage>();

		builder.Services.AddTransient<DataPage>();

 #if DEBUG
 		builder.Logging.AddDebug();
 #endif

 		var app = builder.Build();
    	ServiceHelper.ServiceProvider = app.Services;
    	return app;
 	}
 }
