﻿using WebApplication1.Models;
using WebApplication1.Models.DB;

namespace WebApplication1.DAO
{
    public interface IUserDAO
    {
        Task DeleteUser(string email);

        Task<List<UserGroupRes>> GetGroup();

        Task<List<User>> GetUser(QueryUserReq user, int page);

        Task Insert(UserReq userReq);

        Task UpadateAge(string email, int updateAge);
    }
}