using SERVICIOPUBLICO.DTOs.Lectura;
using SERVICIOPUBLICO.Entities.Interfaces;
using SERVICIOPUBLICO.UseCasesPorts.Lecturas;

namespace SERVICIOPUBLICO.UseCases.Lecturas.Crear
{
    public class CrearLecturaInteractor: ICrearLecturaInPutPort
    {
        readonly ILecturaRepository lecturaRepository;
        readonly ICrearLecturaOutPutPort crearLecturaOutPut;
        readonly IUnitOfWork unitOfWork;

        public CrearLecturaInteractor(ILecturaRepository lecturaRepository, ICrearLecturaOutPutPort crearLecturaOutPut, IUnitOfWork unitOfWork)
        {
            this.lecturaRepository = lecturaRepository;
            this.crearLecturaOutPut = crearLecturaOutPut;
            this.unitOfWork = unitOfWork;
        }

        public async Task Handle(CrearLecturaDTO crearLectura)
        {
            var lecturas = this.lecturaRepository.CrearLectura(crearLectura);

            await this.unitOfWork.SaveChanges();
            await this.crearLecturaOutPut.Handle(lecturas);
        }
    }
}
