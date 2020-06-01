using EntityFrameworkCore.Triggers;
using Microsoft.EntityFrameworkCore;

namespace VirtoCommerce.TrainingModule.Data.Repositories
{
    public class TrainingModuleDbContext : DbContextWithTriggers
    {
        public TrainingModuleDbContext(DbContextOptions<TrainingModuleDbContext> options)
          : base(options)
        {
        }

        protected TrainingModuleDbContext(DbContextOptions options)
            : base(options)
        {
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //        modelBuilder.Entity<TrainingModuleEntity>().ToTable("MyModule").HasKey(x => x.Id);
            //        modelBuilder.Entity<TrainingModuleEntity>().Property(x => x.Id).HasMaxLength(128);
            //        base.OnModelCreating(modelBuilder);
        }
    }
}

