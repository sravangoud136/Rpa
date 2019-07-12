Module VBModule
 
    Sub Main()
        Console.WriteLine("Hello, world!")
        Dim str as String
        dim strarr() as String
        Dim count as Integer
        
        str="Starts from INR 1790"
        
        strarr=str.Split(" ")
        for count=0 to strarr.Length-1
        Console.WriteLine(strarr(count))
        Next
    End Sub
  
End Module
//OUTPUT
//Starts
//from
//INR
//1790
