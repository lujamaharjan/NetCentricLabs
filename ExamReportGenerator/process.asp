<%

    dim fname, lname, cname, section,id
    dim cprogram 
    dim dbms 
    dim cn
    dim dsa 
    dim sad



    id = Request.form("id")
    fname = Request.form("fname")
    lname = Request.form("lname")
    cname = Request.form("cname")
    section = Request.form("section")

    'marks in subjects
    cprogram = Request.form("cprogram")
    cn = Request.form("cn")
    dbms = Request.form("dbms")
    sad = Request.form("dbms")
    dsa = Request.form("dsa")
    
    ' form validation marks should be between 0-100
    If cprogram < 0 OR cprogram > 100 Then
        Response.redirect "err.asp"
        End If
    If cn < 0 OR cn > 100 Then
        Response.redirect "err.asp"
        End If
    If dbms < 0 OR dbms > 100 Then
        Response.redirect "err.asp"
        End If
    If sad < 0 OR sad > 100 Then
        Response.redirect "err.asp"
        End If
    If dsa < 0 OR dsa > 100 Then
        Response.redirect "err.asp"
        End If
         


    dim fi,fobj
    set fi = Server.CreateObject("Scripting.FileSystemObject")
    set fobj = fi.OpenTextFile(Server.MapPath("Student" & id & ".txt"),2,true)
    fobj.WriteLine(id)
    fobj.WriteLine(fname)
    fobj.WriteLine(lname)
    fobj.WriteLine(cname)
    fobj.WriteLine(section)
    fobj.WriteLine(cprogram)
    fobj.WriteLine(cn)
    fobj.WriteLine(dbms)
    fobj.WriteLine(sad)
    fobj.WriteLine(dsa)

    fobj.close
    Response.Cookies("id") = id
    Response.redirect "report.asp"
    
%>