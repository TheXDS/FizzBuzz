function Mark1 {
    for ($j = 1; $j -le 100; $j++) {
        $output = ""
        if ($j % 3 -eq 0) {
            $output += "Fizz"        
        }
        if ($j % 5 -eq 0) {
            $output += "Buzz"
        }
        if ($output.Length -eq 0) {
            $output = $j.ToString()
        }
        Write-Output $output
    }
}

Function Mark2 {
    $words = [System.Collections.Generic.Dictionary[System.Int32, System.String]]::new()        
    
    # Inicialización de palabras
    $words.Add(3, "Fizz")
    $words.Add(5, "Buzz")
    
    for ($j = 1; $j -le 100; $j++) 
    {
        $sb = ""

        $en = $words.GetEnumerator()
        while ($en.MoveNext()) {
            if ($j % $en.Current.Key -eq 0)
            {
                $sb = [System.String]::Concat($sb, $en.Current.Value)
            }
        }
        $en.Dispose()
        if ($sb.Length -eq 0)
        {
            $sb = $j.ToString()
        }
        Write-Output $sb
    }
}

Mark1
Mark2