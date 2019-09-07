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
    Response.redirect "report.asp"
    
















%>