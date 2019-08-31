<!DOCTYPE html>
<html>
<head>
	<title>Student details</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container">
      <hr />
   
	<%  
		Dim fs, fobj
		Dim detail_array(6)
        dim i
        i = 0
        set fs = CreateObject("Scripting.FileSystemObject")
        set fobj = fs.OpenTextFile("E:\netcentric\student_details\student_details.txt",1)

        Do Until fobj.AtEndOfStream
			detail_array(i) = fobj.ReadLine()
			i  = i + 1
		Loop
        fobj.Close
    %>

	<p id="pname">Name:<% Response.write(detail_array(0)) %></p>
	<p id="padd">Address:<% Response.write(detail_array(1)) %></p>
	<p id="pphone">Phone:<% Response.write(detail_array(2)) %></p>
	<p id="pemail">Email:<% Response.write(detail_array(3)) %></p>
	<p id="pdegree">Degree:<% Response.write(detail_array(4)) %></p>

    <a href="form.asp"><input type="button" value="Change Data" id="submit" /></a>
  
</div>
</body>
</html>