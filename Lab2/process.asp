<%@ Language="VBscript" %> 
<html>
 <head> 
 	<title>Submitted data</title>
 </head> 
 
<body> 
	<% 
		 'declare the variables that will receive the values'
		  Dim name, email, comment 
		  'receive the values sent from the form and assign them to variablesnote that  '
		  request.form("name") 
		  'will receive the value entered  'into the textfield called name '
		  name=Request.Form("name") 
		  email=Request.Form("email") 
		  comment=Request.Form("comment") 
	 
		'let's now print out the received values in the browser'
		 Response.Write("Name: " & name & "<br>") 
		 Response.Write("E-mail: " & email & "<br>") 
		 Response.Write("Comments: " & comment & "<br>")
		 'Write in file make a CV.'
 %>
 
  </body> 
  </html> 

