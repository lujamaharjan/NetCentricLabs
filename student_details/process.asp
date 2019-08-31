
     <%
        dim name, address, phone, email, degree
        name = Request.Form("name")
        address = Request.Form("address")
        phone = Request.Form("phone")
        email = Request.Form("email")
        degree = Request.Form("degree")

        dim fi,fo
        set fi=Server.CreateObject("Scripting.FileSystemObject")
        set fo=fi.CreateTextFile(Server.MapPath("student_details.txt"),true) 
        fo.WriteLine(name)
        fo.WriteLine(address) 
        fo.WriteLine(phone) 
        fo.WriteLine(email) 
        fo.WriteLine(degree)
        fo.close 
        set fo=nothing 
        set fi=nothing

         

Response.Redirect "index.asp"

    %>