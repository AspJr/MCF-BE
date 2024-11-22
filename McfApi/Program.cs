using DotNetEnv;
using McfApi.Context;
using McfApi.Extensions;
using McfApi.Middleware;
using Microsoft.EntityFrameworkCore;
using System;

// Env Load
Env.Load();
Env.TraversePath().Load();

var envName = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");
var builder = WebApplication.CreateBuilder(args);

// Get the environment
var environment = builder.Environment.EnvironmentName; // Development, Staging, or Production

// Conditional configuration
if (builder.Environment.IsProduction())
{
    Console.WriteLine("Running in Development environment");
}
else if (builder.Environment.IsProduction()) {
    Console.WriteLine("Running in Production environment");
}


builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddDependencyInjection();
builder.Services.ConfigureCorsPolicy();
builder.Services.AddDbContext<EfCoreContext>(option => option.UseSqlServer("server=" + Env.GetString("HOST") + ";user=" + Env.GetString("USERNAME") + ";password=" + Env.GetString("PASSWORD") + ";Database=" + Env.GetString("DATABASE") + ";Trusted_Connection=true;MultipleActiveResultSets=true;TrustServerCertificate=True"));

//builder.Services.AddDbContext<EfCoreContext>(option =>
//            option.UseSqlServer("server=localhost\\SQLEXPRESS2019; database=DB_Mcf; Integrated Security=true;TrustServerCertificate=True;")
//        );

builder.Services.AddTransient<HandleExceptionMiddleware>();

var app = builder.Build();
app.UseMiddleware<HandleExceptionMiddleware>();
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(options =>
    {
        options.DocumentTitle = "MCF REST API";
    });
}
app.UseHttpsRedirection();
app.UseAuthorization();
app.MapControllers();
app.UseCors();
app.Run();

