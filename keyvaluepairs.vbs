Imports System.Collections.Generic
Module Coll
  
    Sub Main()
        ' Create a Dictionary with Add.
        Dim strarr() as String={"bird","frog","man","cake","bird"}
        Dim dictionary As New Dictionary(Of String, Integer)
        ' Add 4 entries.
        dictionary.Add("bird", 0)
        dictionary.Add("frog", 0)
        dictionary.Add("snake", 0)
        dictionary.Add("fish", 0)
        Console.WriteLine("DICTIONARY COUNT: {0}", dictionary.Count)
        
        for each s as String in strarr
        if(dictionary.containskey(s)) then 
        dictionary(s)=dictionary(s)+1
        end if
        next s
        For Each e As KeyValuePair(Of String, Integer) In dictionary
            Console.WriteLine("{0}: {1}", e.Key, e.Value)
        Next
    End Sub
End Module

