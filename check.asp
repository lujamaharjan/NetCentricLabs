<% 
	

    Option Explicit
    Dim fso, oFile
    set fso = CreateObject("Scripting.FileSystemObject")

    set oFile = fso.OpenTextFile("E:\netcentric\sachin.txt",1)
    ' Response.write(oFile.Read(15))
    ' Response.write(oFile.ReadLine)
    Response.write("<br/>" & oFile.ReadAll)
    oFile.Close
    %>

