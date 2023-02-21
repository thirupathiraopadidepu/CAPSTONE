using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;
namespace CAPSTONE_WE_API.Models
{
    public class productcontext : DbContext
    {
        public productcontext(DbContextOptions<productcontext> options)
           : base(options)
        {

        }
        public DbSet<product>? products { get; set; }
    }
}