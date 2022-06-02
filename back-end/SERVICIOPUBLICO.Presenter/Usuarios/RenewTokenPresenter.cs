﻿
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Presenter.Usuarios
{
    public class RenewTokenPresenter : IRenewTokenOutPutPort, IPresenter<UsuarioDTO>
    {
        public UsuarioDTO Content { get; private set; }

        public Task Handle(UsuarioDTO usuario)
        {
            Content = usuario;
            return Task.CompletedTask;

        }
    }
}
