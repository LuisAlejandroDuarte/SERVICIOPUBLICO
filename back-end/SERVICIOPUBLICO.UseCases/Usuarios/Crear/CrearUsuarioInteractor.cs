using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;


namespace SERVICIOPUBLICO.UseCases.Usuarios.Crear
{
    public class CrearUsuarioInteractor : ICrearUsuarioInPutPort
    {

        readonly IUsuarioRepository repository;
        readonly ICrearUsuarioOutPutPort outPutPort;
        readonly IUnitOfWork unitOfWork;

        public CrearUsuarioInteractor(IUsuarioRepository repository, ICrearUsuarioOutPutPort outPutPort, IUnitOfWork unitOfWork)
        {
            this.repository = repository;
            this.outPutPort = outPutPort;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(UsuarioDTO usuario)
        {
            var result =repository.CrearUsuarios(usuario);
            await this.unitOfWork.SaveChanges();
            await outPutPort.Handle(result);

        }
    }
}
