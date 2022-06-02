using SERVICIOPUBLICO.UseCasesPorts.Usuarios;

namespace SERVICIOPUBLICO.Presenter.Usuarios
{
    public class ChangePasswordPresenter : IChangePasswordOutPutPort, IPresenter<bool>
    {
        public bool Content {get;private set;}

        public Task Handle(bool result)
        {
            Content = result;

            return Task.CompletedTask;
        }
    }
}
