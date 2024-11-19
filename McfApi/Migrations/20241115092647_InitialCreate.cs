using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace McfApi.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ms_storage_location",
                columns: table => new
                {
                    location_id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    location_name = table.Column<string>(type: "varchar(100)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ms_storage_location", x => x.location_id);
                });

            migrationBuilder.CreateTable(
                name: "ms_user",
                columns: table => new
                {
                    user_id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    user_name = table.Column<string>(type: "varchar(20)", nullable: true),
                    password = table.Column<string>(type: "varchar(50)", nullable: true),
                    is_active = table.Column<bool>(type: "bit", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ms_user", x => x.user_id);
                });

            migrationBuilder.CreateTable(
                name: "tr_bpkb",
                columns: table => new
                {
                    agreement_number = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    bpkb_no = table.Column<string>(type: "varchar(100)", nullable: true),
                    branch_id = table.Column<string>(type: "varchar(10)", nullable: true),
                    bpkb_date = table.Column<DateTime>(type: "datetime2", nullable: true),
                    faktur_no = table.Column<string>(type: "varchar(100)", nullable: true),
                    faktur_date = table.Column<DateTime>(type: "datetime2", nullable: true),
                    location_id = table.Column<int>(type: "int", nullable: false),
                    police_no = table.Column<string>(type: "varchar(20)", nullable: true),
                    bpkb_date_in = table.Column<DateTime>(type: "datetime2", nullable: true),
                    created_by = table.Column<string>(type: "varchar(20)", nullable: true),
                    created_on = table.Column<DateTime>(type: "datetime2", nullable: true),
                    last_updated_by = table.Column<string>(type: "varchar(20)", nullable: true),
                    last_updated_on = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tr_bpkb", x => x.agreement_number);
                    table.ForeignKey(
                        name: "FK_tr_bpkb_ms_storage_location_location_id",
                        column: x => x.location_id,
                        principalTable: "ms_storage_location",
                        principalColumn: "location_id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tr_bpkb_location_id",
                table: "tr_bpkb",
                column: "location_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ms_user");

            migrationBuilder.DropTable(
                name: "tr_bpkb");

            migrationBuilder.DropTable(
                name: "ms_storage_location");
        }
    }
}
