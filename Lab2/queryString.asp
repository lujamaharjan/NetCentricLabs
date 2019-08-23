<%

dim fname,lname,email
set fname = request.QueryString("fname")
set lname = request.QueryString("lname")
set email = request.QueryString("email")


'Processing the data'
Response.Write("First name = " & fname)
Response.Cookies("fname") = fname

Response.Write("Last Name = " & lname)
Response.Cookies("lname") = lname

Response.Write("Email = " & email)
Response.Cookies("email") = email

'forms redirections using conditions try the examples of pdf'
'server variables //buffer flag//'

%>