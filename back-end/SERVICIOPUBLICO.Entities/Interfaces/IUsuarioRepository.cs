using SERVICIOPUBLICO.Entities.POCOs;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface IUsuarioRepository
    {
        ResultDataTable GetAllUsuarios(Paginator paginator);
        void CrearUsuarios(Usuario usuario);
        void ActualizarUsuario(ActualizarUsuarioDTO usuario);
        IEnumerable<Usuario>? GetAll();
        UsuarioDTO? Login(LoginDTO login);
        UsuarioDTO GetUser(long Id);
        void ChangePassword(UsuarioDTO usuario);
    }
}
