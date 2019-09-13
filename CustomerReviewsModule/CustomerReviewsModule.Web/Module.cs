using Microsoft.Practices.Unity;
using VirtoCommerce.Platform.Core.Modularity;

namespace CustomerReviewsModule.Web
{
    public class Module : ModuleBase
    {
        // private readonly string _connectionString = ConfigurationHelper.GetConnectionStringValue("CustomerReviewsModule") ?? ConfigurationHelper.GetConnectionStringValue("VirtoCommerce");
        private readonly IUnityContainer _container;

        public Module(IUnityContainer container)
        {
            _container = container;
        }

        public override void SetupDatabase()
        {
            // Modify database schema with EF migrations
            // using (var context = new MyRepository(_connectionString)))
            // {
            //     var initializer = new SetupDatabaseInitializer<MyRepository, Data.Migrations.Configuration>();
            //     initializer.InitializeDatabase(context);
            // }
        }

        public override void Initialize()
        {
            base.Initialize();

            // This method is called for each installed module on the first stage of initialization.

            // Register implementations:
            // _container.RegisterType<IMyRepository>(new InjectionFactory(c => new MyRepository(_connectionString, new EntityPrimaryKeyGeneratorInterceptor()));
            // _container.RegisterType<IMyService, MyService>();

            // Try to avoid calling _container.Resolve<>();
        }

        public override void PostInitialize()
        {
            base.PostInitialize();

            // This method is called for each installed module on the second stage of initialization.

            // Override types using AbstractTypeFactory:
            // AbstractTypeFactory<BaseModel>.OverrideType<BaseModel, BaseModelEx>();
            // AbstractTypeFactory<BaseModelEntity>.OverrideType<BaseModelEntity, BaseModelExEntity>();

            // Resolve registered implementations:
            // var settingManager = _container.Resolve<ISettingsManager>();
            // var value = settingManager.GetValue("Pricing.ExportImport.Description", string.Empty);
        }
    }
}
