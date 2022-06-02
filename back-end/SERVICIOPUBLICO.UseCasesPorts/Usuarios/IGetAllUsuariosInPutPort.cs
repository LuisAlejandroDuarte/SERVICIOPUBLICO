using SERVICIOPUBLICO.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOPUBLICO.UseCasesPorts.Usuarios
{
    public interface IGetAllUsuariosInputPort
    {
        Task Handle(long EmpresaId);
    }

    public interface IGetUsuariosInputPort
    {
        Task Handle(Paginator paginador);
    }
}
