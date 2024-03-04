namespace Ef.Core;

public class ProductRating
{
    public int Id { get; set; }
    public double Rating { get; set; }
    public Product Product { get; set; }
}