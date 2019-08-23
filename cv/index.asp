<!DOCTYPE html>
<html lang="en">


<head>
    <title>Sachin Maharjan</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    
    <div id="page-wrap">

        <img src="images/sachin.png" alt="Photo" id="pic" />

        <div id="contact-info" class="vcard">

            <!-- Microformats! -->

            <h1 class="fn">Sachin Maharjan</h1>

            <p>
                Phone: <span class="tel"><% Response.Write("9868132399")
                %></span><br />
                Email: <a class="email" href="mailto:sachinmaharjan@acd.edu.np"><% Response.Write("sachinmaharjan@acd.edu.np") %></a>
            </p>
        </div>

        <div id="objective">
            <p>
                <%
                
                Dim fs, fobj
                set fs = CreateObject("Scripting.FileSystemObject")
                set fobj = fs.OpenTextFile("E:\netcentric\cv\About.txt",1)
                Response.write(fobj.ReadAll)
                fobj.Close
            
                 %>
            </p>
        </div>

        <div class="clear"></div>

        <dl>
            <dd class="clear"></dd>
            <% 
                Dim fobj1
                set fobj1 = fs.OpenTextFile("E:\netcentric\cv\Education.txt",1)
                Response.write(fobj1.ReadAll)
                fobj1.Close
             %>
            

            <dd class="clear"></dd>

            <%
                Dim fobj2
                set fobj2 = fs.OpenTextFile("E:\netcentric\cv\Skill.txt",1)
                Response.write(fobj2.ReadAll)
                fobj2.Close
            %>

            <dd class="clear"></dd>
            <%
                Dim fobj3
                set fobj3 = fs.OpenTextFile("E:\netcentric\cv\Experience.txt",1)
                Response.write(fobj3.ReadAll)
                fobj3.Close
            %>
            
            <dd class="clear"></dd>

            <dt>Hobbies</dt>
            <dd><%
                Dim fobj4
                set fobj4 = fs.OpenTextFile("E:\netcentric\cv\Hobby.txt",1)
                Response.Write(fobj4.ReadAll)
                fobj4.Close
                %></dd>

            <dd class="clear"></dd>

            <dt>online/offline courses</dt>
            <%
                Dim fobj5
                Dim arrLink(10)
                Dim i
                i = 0
                set fobj5 = fs.OpenTextFile("E:\netcentric\cv\Links.txt",1)
                Response.Write(fobj5.ReadAll)
                fobj5.Close
            %>
         



            <dd class="clear"></dd>

            <dt>References</dt>
            <dd>Available on request</dd>

            <dd class="clear"></dd>
        </dl>

        <div class="clear"></div>

    </div>

</body>

</html>