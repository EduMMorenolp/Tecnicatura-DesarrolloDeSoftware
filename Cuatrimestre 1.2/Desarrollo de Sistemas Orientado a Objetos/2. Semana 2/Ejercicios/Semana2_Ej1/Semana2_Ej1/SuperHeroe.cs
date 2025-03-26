using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Semana2_Ej1
{
    internal class SuperHeroe
    {
        private string nombre;
        private int fuerza;
        private int resistencia;
        private int superpoderes;

        public SuperHeroe(string nombre, int fuerza, int resistencia, int superpoderes)
        {
            this.Nombre = nombre;
            this.Fuerza = fuerza;
            this.Resistencia = resistencia;
            this.Superpoderes = superpoderes;
        }

        public string Nombre { get => nombre; private set => nombre = value; }
        public int Fuerza
        {
            get => fuerza;
            private set => fuerza = (value < 0) ? 0 : (value > 100) ? 100 : value;
        }

        public int Resistencia
        {
            get => resistencia;
            private set => resistencia = (value < 0) ? 0 : (value > 100) ? 100 : value;
        }

        public int Superpoderes
        {
            get => superpoderes;
            private set => superpoderes = (value < 0) ? 0 : (value > 100) ? 100 : value;
        }

        public string Competir(SuperHeroe otro)
        {
            int victorias = 0, derrotas = 0;

            if (Fuerza > otro.Fuerza) victorias++;
            else if (Fuerza < otro.Fuerza) derrotas++;

            if (Resistencia > otro.Resistencia) victorias++;
            else if (Resistencia < otro.Resistencia) derrotas++;

            if (Superpoderes > otro.Superpoderes) victorias++;
            else if (Superpoderes < otro.Superpoderes) derrotas++;

            if (victorias > derrotas) return "TRIUNFO";
            else if (victorias < derrotas) return "DERROTA";
            else return "EMPATE";
        }

    }
}
