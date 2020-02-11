using System;
using System.Text;
using System.Collections.Generic;

namespace FizzBuzz
{
    class Program
    {
        static void Main(string[] args)
        {
            Mark1();
            Mark2();
        }

        static void Mark1()
        {
            for (int j = 1; j <= 100; j++)
            {
                var output = String.Empty;
                if (j % 3 == 0) output += "Fizz";
                if (j % 5 == 0) output += "Buzz";
                if (output.Length == 0) output = j.ToString();
                Console.WriteLine(output);
            }
        }

        static void Mark2()
        {
            var words = new Dictionary<int,string>();
            
            // Inicialización de palabras
            words.Add(3, "Fizz");
            words.Add(5, "Buzz");

            for (var j = 1; j <= 100; j++) 
            {
                var sb = new StringBuilder();
                foreach (var k in words)
                {
                    if (j % k.Key == 0)
                    {
                        sb.Append(k.Value);
                    }
                }
                if (sb.Length == 0)
                {
                    sb.Append(j.ToString());
                }
                Console.WriteLine(sb.ToString());
            }
        }
    }
}
