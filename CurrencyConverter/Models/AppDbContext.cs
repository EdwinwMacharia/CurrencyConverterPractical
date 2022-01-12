using CurrencyConverter.Controllers;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CurrencyConverter.Models
{
    public class AppdbContext : DbContext
    {
        public AppdbContext(DbContextOptions<AppdbContext> options) : base(options)
        {

        }
        public DbSet<ExRateTable> ExRateTables { get; set; }
        public DbSet<ExchangeLog> ExchangeLogs { get; set; }


        
    }
}
