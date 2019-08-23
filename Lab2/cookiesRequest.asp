<%  


dim fname,lname

set fname = request.Cookies("fname")
Response.Write("fname :" &fname)


set lname = request.Cookies("lname")
Response.Write("lname:" &lname)












%>