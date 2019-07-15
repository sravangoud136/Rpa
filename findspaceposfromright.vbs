Module VBModule
 
    Sub Main()
        Console.WriteLine("Hello, world!")
          dim str as String
      Dim strarray() as String
      dim i as Integer
      
      str="Hai andi I am selfi"
      
     
      for i =str.length-1 to 0 step -1
         if (str(i)=" ") then 
         Console.WriteLine(i)
         exit for
         end if
         next
      
    End Sub
  
End Module
