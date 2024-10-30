using Microsoft.EntityFrameworkCore;
using WebApplication1.DAO;
using WebApplication1.Models;
using WebApplication1.Models.DB;
using WebApplication1.Service;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<DingContext>(
   options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// 注册 DAO 和服务
builder.Services.AddScoped<IUserDAO, UserDAO>();
builder.Services.AddScoped<IUserService, UserService>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();