using System.Security.Cryptography.Xml;
using WebApplication1.DAO;
using WebApplication1.Models;
using WebApplication1.Models.DB;

namespace WebApplication1.Service
{
    public class UserService : IUserService
    {
        private readonly IUserDAO _userDAO;

        public UserService(IUserDAO userDAO)
        {
            _userDAO = userDAO;
        }

        public async Task Insert(UserReq userReq)
        {
            await _userDAO.Insert(userReq);
        }

        public async Task<List<User>> GetUser(QueryUserReq query, int page)
        {
            return await _userDAO.GetUser(query, page);
        }

        public async Task<List<UserGroupRes>> GetGroup()
        {
            return await _userDAO.GetGroup();
        }

        public async Task UpadateAge(string email, int updateAge)
        {
            await _userDAO.UpadateAge(email, updateAge);
        }

        public async Task DeleteUser(string email)
        {
            await _userDAO.DeleteUser(email);
        }

        public async Task<string> GetUserNameWithMosic(string email)
        {
            User model = await _userDAO.GetUserNameWithMosic(email);
            return MosaicName(model.Name);
        }

        public string MosaicName(string sourceName)
        {
            if (string.IsNullOrEmpty(sourceName) || sourceName.Length < 2)
            {
                return sourceName;
            }

            // 將名字的第二個字替換成 *
            return sourceName[0] + "*" + sourceName.Substring(2);
        }
    }
}