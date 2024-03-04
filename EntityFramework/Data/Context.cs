using Microsoft.EntityFrameworkCore;

namespace Ef.Data;

public class Context : DbContext
{

    public DbSet<Product> Products { get; set; }
    

    protected override void OnConfiguring(DbContextOptionsBuilder options)
        => options.UseSqlServer($"Data Source=eCommerceDB.db");
        
}
