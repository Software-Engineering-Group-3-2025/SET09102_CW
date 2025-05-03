namespace Notes
{
    public static class ServiceHelper
    {
        public static IServiceProvider ServiceProvider { get; set; }

        public static T GetService<T>() where T : class
            => ServiceProvider.GetService(typeof(T)) as T;
    }
}
