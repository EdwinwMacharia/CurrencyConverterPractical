using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using CurrencyConverter.Models;
using System.Net;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace CurrencyConverter.Controllers
{
    public class HomeController : Controller
    {
        private readonly AppdbContext _context;

        public HomeController( AppdbContext context)
        {           
            _context = context;
        }

        public string Index()
        {
            return "Hello WOrld";
        }

        public void FetchDataFromAPI()
        {

            
            //var currentdate = DateTime.Today.Date;
            //var date = _context.ExRateTables.where(x => x. ==).SingleOrDefault();

            var Exurl = "http://data.fixer.io/api/latest?access_key=65f29da6e761e6cf86067112fc6e1e49";
            var symbolsUrl = "http://data.fixer.io/api/symbols?access_key=65f29da6e761e6cf86067112fc6e1e49";
            var client = new WebClient();
            List<ExRateTable> exRateTable = new List<ExRateTable>();

            var content = client.DownloadString(Exurl);
            var ExRate = JsonConvert.DeserializeObject<ExRate>(content);

            var symbolsString = client.DownloadString(symbolsUrl);
            var symbol = JsonConvert.DeserializeObject<countries>(symbolsString);

            JObject json = JObject.Parse(ExRate.Rates.ToString());
            foreach (var e in json)
            {
                ExRateTable t = new ExRateTable();
                t.EntryDate = DateTime.Parse(ExRate.Date);
                t.Country = symbol.symbols[e.Key];
                t.Code = e.Key;
                t.Rate = Convert.ToDouble(e.Value);
                exRateTable.Add(t);
            }
            _context.ExRateTables.AddRange(exRateTable);
            _context.SaveChanges();
        }


        public IActionResult ExchangePage()
        {
            var fromCountry = _context.ExRateTables.Where(x=>x.Code=="EUR").Select(a => new SelectListItem { Value = a.Country, Text = a.Country }).ToList();
            var country = _context.ExRateTables.Select(a => new SelectListItem { Value = a.Rate.ToString(), Text = a.Country }).ToList();
            ViewBag.fromCountry = fromCountry;
            ViewBag.country = country;
            return View();
        }

       
        public void Save(ExchangeLog exLog)
        {       
            if (ModelState.IsValid)
            {
                exLog.LogDate = DateTime.Now;
                _context.ExchangeLogs.Add(exLog);
                _context.SaveChanges();              
            }
        }

        public IActionResult ShowLog()
        {
          
            return View();
        }

        public JsonResult GetLogs()
        {
            var data = _context.ExchangeLogs.ToList();
            return Json(data);
        }

    }

    public class ExRate
    {
        public string success { get; set; }
        public string timestamp { get; set; }
        public string  Base { get; set; }
        public string Date { get; set; }
        public object Rates { get; set; }
    }

    public class countries
    {
        public string success { get; set; }
        public Dictionary<string,string> symbols { get; set; }
    }

    public class ExRateTable
    {
        public int Id { get; set; }
        public DateTime EntryDate { get; set; }

    
        public string Country { get; set; }
  
        public string Code { get; set; }
 
        public double Rate { get; set; }
    }
}
