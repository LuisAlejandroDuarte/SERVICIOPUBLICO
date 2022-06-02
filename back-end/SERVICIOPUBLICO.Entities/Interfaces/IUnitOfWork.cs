
namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface IUnitOfWork
    {
        Task<int> SaveChanges();
    }
}
