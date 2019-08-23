<!DOCTYPE html>
<html>
<head>
	<title>VB Script pratice Here</title>
</head>
<body>
	<% @Language="VBScript" %>

	<%   
		' 
Response.Write("Hello world")
		' dim mytext
		' mytext = "Hello folks"
		' Response.Write(mytext)

		' Response.Write("<br/>")

		' dim mynum 
		' mynum = 10

		
		' Response.Write("my number is "& mynum)



		' Response.Write("<hr/>")
		' dim i
		' i = 50
		' if i > 10 then
		' 	Response.Write("Hello World")
		' else
		' 	Response.Write("hi World")
		' end if

		for i=0 to 10 step 2
			Response.Write("hi" & "<br/>")
		next

		dim myvar 
		myvar = 5
		select case myvar
			case 1
				Response.Write("first case")

			case 2
				Response.Write("scond case")

			case 5
				Response.Write("five")

			case else
				Response.Write("Else here")
				
		end select
	%>
</body>
</html>