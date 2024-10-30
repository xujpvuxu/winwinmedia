﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace WebApplication1.Models.DB;

public partial class User
{
    /// <summary>
    /// 信箱
    /// </summary>
    public string Email { get; set; }

    /// <summary>
    /// 密碼
    /// </summary>
    public string Password { get; set; }

    /// <summary>
    /// 姓名
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// 年齡
    /// </summary>
    public int? Age { get; set; }

    /// <summary>
    /// 性別(0:女、1:男)
    /// </summary>
    public bool Gender { get; set; }

    /// <summary>
    /// 省份
    /// </summary>
    public string Region { get; set; }

    /// <summary>
    /// 城市
    /// </summary>
    public string City { get; set; }
}