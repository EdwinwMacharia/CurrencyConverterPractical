using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace CurrencyConverter.Migrations
{
    public partial class log : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ExchangeLogs",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ConvertFrom = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ConvertTo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    InputValue = table.Column<double>(type: "float", nullable: false),
                    Rate = table.Column<double>(type: "float", nullable: false),
                    ConvertedValue = table.Column<double>(type: "float", nullable: false),
                    LogDate = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ExchangeLogs", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ExchangeLogs");
        }
    }
}
