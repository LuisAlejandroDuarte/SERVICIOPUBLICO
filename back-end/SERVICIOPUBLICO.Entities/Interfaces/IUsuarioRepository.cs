using SERVICIOPUBLICO.DTOs;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.POCOs;


namespace SERVICIOPUBLICO.Entities.Interfaces
{
    public interface IUsuarioRepository
    {
        ResultDataTable GetAllUsuarios(Paginator paginator);
        UsuarioDTO  CrearUsuarios(UsuarioDTO usuario);
        UsuarioDTO ActualizarUsuario(UsuarioDTO usuario);
        IEnumerable<Usuario>? GetAll();
        UsuarioDTO Login(LoginDTO login);
        UsuarioDTO GetUser(long Id);
        void ChangePassword(UsuarioDTO usuario);
    }
}
