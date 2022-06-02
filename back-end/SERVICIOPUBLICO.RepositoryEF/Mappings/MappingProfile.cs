using AutoMapper;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.POCOs;

namespace SERVICIOPUBLICO.RepositoryEF.Mappings
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Usuario, UsuarioDTO>().ReverseMap();
            

        }
    }
}
