using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.RepositoryEF.DataContext;

namespace SERVICIOPUBLICO.RepositoryEF.Repositories
{
    public class UnitOfWork : IUnitOfWork
    {

        readonly ServicioPublicoContext Context;

        public UnitOfWork(ServicioPublicoContext context)
        {
            Context = context;
        }

        public Task<int> SaveChanges()
        {
            //Crear Excepciones
            return Context.SaveChangesAsync();
        }
    }
}
