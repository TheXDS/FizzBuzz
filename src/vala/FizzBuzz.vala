using GLib, Gee ;

namespace FizzBuzz
{
    class Program
    {
        static void main ()
        {
            mark1 ();
            mark2 ();
        }

        static void mark1 ()
        {
            for (int j = 1; j <= 100; j++)
            {
                var output = "";
                if (j % 3 == 0) output += "Fizz";
                if (j % 5 == 0) output += "Buzz";
                if (output.length == 0) output = @"$j";
                stdout.printf (output + "\n");
            }
        }

        static void mark2 ()
        {
            var words = new HashMap<int, string>();
            
            // Inicialización de palabras
            words.@set (3, "Fizz");
            words.@set (5, "Buzz");

            for (var j = 1; j <= 100; j++) 
            {
                var sb = new StringBuilder ();
                foreach (var k in words.keys)
                {
                    if (j % k == 0)
                    {
                        sb.append (words.@get(k));
                    }
                }
                if (sb.len == 0)
                {
                    sb.append (@"$j");
                }
                stdout.printf (sb.str + "\n");
            }
        }
    }
}