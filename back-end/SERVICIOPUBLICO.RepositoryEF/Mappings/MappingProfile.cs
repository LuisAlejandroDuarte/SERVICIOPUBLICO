using AutoMapper;
using SERVICIOPUBLICO.DTOs.BaseEncuesta;
using SERVICIOPUBLICO.DTOs.Catastro;
using SERVICIOPUBLICO.DTOs.Suscriptor;
using SERVICIOPUBLICO.DTOs.Tarifa;
using SERVICIOPUBLICO.DTOs.Uso;
using SERVICIOPUBLICO.DTOs.Usuario;
using SERVICIOPUBLICO.Entities.POCOs;

namespace SERVICIOPUBLICO.RepositoryEF.Mappings
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Usuario, UsuarioDTO>().ReverseMap();
            CreateMap<Uso, UsoDTO>().ReverseMap();
            CreateMap<Tarifa, TarifaDTO>().ReverseMap();
            CreateMap<Suscriptor, SuscriptorDTO>().ReverseMap();
            CreateMap<Catastro, CatastroDTO>().ReverseMap();
            CreateMap<BaseEncuesta, BaseEncuestaDTO>().ReverseMap();
        }
    }
}
