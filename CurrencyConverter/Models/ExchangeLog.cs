using System;
using System.ComponentModel.DataAnnotations;

namespace CurrencyConverter.Models
{
    public class ExchangeLog
    {
        public int Id { get; set; }

        [Required]
        public string ConvertFrom { get; set; }
        [Required]
        public string ConvertTo { get; set; }
        [Required]
        public double InputValue { get; set; }
        public double Rate { get; set; }
        [Required]
        public double ConvertedValue { get; set; }
        public DateTime LogDate { get; set; }
    }
}
