Imports System.Data
Module Module1

    Sub Main()
        ' This calls the GetTable method from above.
      
  
        Dim strarr() as String={"system","business","internal","business","system","system"}
        Dim table As New DataTable
        table.Columns.add("ExceptionType",GetType(String))
        table.Columns.add("Count",GetType(Integer))
        'primaryKey(0) = table.Columns("ExceptionType")
       
        table.rows.add("System",0)
        'table.rows.add("System",2)
        table.rows.add("Business",0)
         'Dim ro As DataRowCollection = table.Rows
 

   

        'for each s as String in strarr
        'if()
        'next
       
        ' Access Rows property on DataTable.
        
    'for each s as String in strarr
       
        Dim result() As DataRow = table.Select("ExceptionType='system'")

    For Each row As DataRow In result
          row(1)=row(1)+1
        Next
        
'next s
        For Each row As DataRow In table.Rows
            ' Write value of first Integer.
             Console.WriteLine("{0}:{1}", row(0), row(1))
        Next
    End Sub

End Module
