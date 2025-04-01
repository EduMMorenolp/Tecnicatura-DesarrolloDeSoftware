using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Semana3_PrimerProyecto
{
    internal class Postulante
    {
        string nombre;
        string apellido;
        string documento;
        string tipo;

        public Postulante(string nombre, string apellido, string tipo, string documento)
        {
            this.nombre = nombre;
            this.apellido = apellido;
            this.documento = documento;
            this.tipo = tipo;
        }

        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Documento { get => documento; set => documento = value; }
        public string Tipo { get => tipo; set => tipo = value; }
    }
}
