Module VBModule
 
    Sub Main()
        Console.WriteLine("Hello, world!")
        dim today as DateTime
        dim i as integer
        dim d as integer
        dim count as integer
        count=0
        dim result as DateTime
        today=now
        result=today
        Console.WriteLine(result.ToString()+" "+today.ToString("ddd"))
        for i=0 to 100 
        result=result.adddays(1)
        d=result.Dayofweek
        if (d<>0 and d<>6) then
        Console.WriteLine(result.ToString()+" "+result.ToString("ddd"))
        count=count+1
        end if
        if(count=7) then
        exit for
        end if
        next
        
        
    
    End Sub
  
End Module
