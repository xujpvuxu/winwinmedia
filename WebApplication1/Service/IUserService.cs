using WebApplication1.Models;
using WebApplication1.Models.DB;

namespace WebApplication1.Service
{
    public interface IUserService
    {
        Task<List<UserGroupRes>> GetGroup();

        Task<List<User>> GetUser(QueryUserReq user, int page);

        Task Insert(UserReq userReq);
    }
}