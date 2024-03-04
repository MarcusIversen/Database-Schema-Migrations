using Microsoft.EntityFrameworkCore;
using Ef.Core;

namespace Ef.Data;

public class Context : DbContext
{

    public DbSet<Product> Products { get; set; }
    public DbSet<Category> Categories { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder options)
        => options.UseSqlServer($"Data Source=eCommerceDB.db");
        
}
