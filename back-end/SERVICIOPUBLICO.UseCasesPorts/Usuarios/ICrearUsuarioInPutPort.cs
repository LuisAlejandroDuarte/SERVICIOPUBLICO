using SERVICIOPUBLICO.DTOs.Usuario;


namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public  interface  ICrearUsuarioInPutPort
    {
        Task Handle(UsuarioDTO usuario);
    }
}
