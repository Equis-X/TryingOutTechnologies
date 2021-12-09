using System;

class M40
{
    static void Main(string[] ARGS){
        while (true)
        {
            int a = 0;
            string capture = Console.ReadLine();
            bool x = int.TryParse(capture, out a);
            if (a == 9009)
            {
                Console.Clear();
                Console.WriteLine("Executing exit command!");
                break;
            }
            else if (capture != null && x)
            {
                double gauge = double.Parse(capture)/0.4;
                Console.Clear();
                Console.WriteLine(gauge);
            } 
            else
            {
                Console.Clear();
                Console.WriteLine("Valor no definido!");
            }
        }
    }
}