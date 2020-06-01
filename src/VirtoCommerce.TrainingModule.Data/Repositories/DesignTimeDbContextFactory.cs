using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace VirtoCommerce.TrainingModule.Data.Repositories
{
    public class DesignTimeDbContextFactory : IDesignTimeDbContextFactory<TrainingModuleDbContext>
    {
        public TrainingModuleDbContext CreateDbContext(string[] args)
        {
            var builder = new DbContextOptionsBuilder<TrainingModuleDbContext>();

            builder.UseSqlServer("Data Source=(local);Initial Catalog=VirtoCommerce3;Persist Security Info=True;User ID=virto;Password=virto;MultipleActiveResultSets=True;Connect Timeout=30");

            return new TrainingModuleDbContext(builder.Options);
        }
    }
}
