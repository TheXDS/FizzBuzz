Imports System
Imports System.Text
Imports System.Collections.Generic

Module Program
    Sub Main(args As String())
        Mark1()
        Mark2()
    End Sub

    Sub Mark1()
        For j as Integer = 1 To 100 Step 1
            Dim output as String = String.Empty
            If j mod 3 = 0 Then output += "Fizz"
            If j mod 5 = 0 Then output += "Buzz"
            If output.Length = 0 Then output = j.ToString()
            Console.WriteLine(output)
        Next 
    End Sub

    Sub Mark2()
        Dim words as new Dictionary(of Integer, String)

        ' Inicialización de palabras
        words.Add(3, "Fizz")
        words.Add(5, "Buzz")

        For j as Integer = 1 To 100 Step 1
            Dim sb as new StringBuilder()
            For Each k As KeyValuePair(of Integer, String) In words            
                If j Mod k.Key = 0 Then sb.Append(k.Value)                
            Next
            If sb.Length = 0 Then sb.Append(j.ToString())
            Console.WriteLine(sb.ToString())
        Next
    End Sub
End Module
