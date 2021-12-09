// Libs
using System;

namespace TP1
{
    // ArrayManaged
    class ArrayManaged
    {
        // Count (Propiedad)
        public int Count { get; set; }

        // Capacity (Propiedad)
        public int Capacity { get; set; }
        
        // [void] Add(long) (Método)
        public void Add ( long varX ) { }

        // [int] Search(long) (Método)
        public int Search ( long varX ) { }

        // [(int, int)]Siblings(long) (Método) : Este método debe retornar las posiciones de los elementos que se encuentran al lado del elemento encontrado.
        public (int, int) Siblings ( long varX ) { }

        // [long] Remove (Método)
        public long Remove () { }

        // [long] Get(int) (Método)
        public long Get ( int varX ) { }
    }
}