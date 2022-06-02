using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;


namespace SERVICIOPUBLICO.Presenter.Usuarios
{
    public class GetAllUsuariosPresenter : IGetAllUsuariosOutputPort, IPresenter<IEnumerable<UsuarioDTO>>
    {
        public IEnumerable<UsuarioDTO> Content { get; private set; }

        public Task Handle(IEnumerable<UsuarioDTO> usuarios)
        {
            Content = usuarios;
            return Task.CompletedTask;
        }
    }

    public class GetUsuariosPresenter : IGetUsuariosOutPutPort, IPresenter<ResultDataTable>
    {
        public ResultDataTable Content { get; private set; }

        public Task Handle(ResultDataTable usuarios)
        {
            Content = usuarios;
            return Task.CompletedTask;
        }
    }
}
