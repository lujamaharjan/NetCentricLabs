<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Report of student</title>
    <link rel="stylesheet" href="report.css">
</head>

<body>


    <%
    
        dim id,i
        dim arr(11)
        id = Request.Cookies("id")
        count = 0

        set fs = CreateObject("Scripting.FileSystemObject")
        set fobj = fs.OpenTextFile(Server.MapPath("student"& id & ".txt"),1)
        Do Until fobj.AtEndOfStream
            arr(i) = fobj.Readline()
            i = i +1

        Loop
        fobj.close
    %>
    <div class="wrapper">
        
            <h1>Student Report Card</h1>
        <p><span>Student Name:</span><% Response.Write(arr(1) &" "& arr(2)) %></p>
        <p><span>Class Name:</span><% Response.Write(arr(3)) %></p>
        <p><span>Section:</span><% Response.Write(arr(4)) %></p>

        <table>
            <thead>
                <tr>
                    <td>Subject Code</td>
                    <td>Subject</td>
                    <td>Pass Marks</td>
                    <td>Total Marks</td>
                    <td>Obtained</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>CSC 101</td>
                    <td>C Programming</td>
                    <td>40</td>
                    <td>100</td>
                    <td><% Response.Write(arr(5)) %></td>
                </tr>

                <tr>
                    <td>CSC 350</td>
                    <td>Computer Networks</td>
                    <td>40</td>
                    <td>100</td>
                    <td><% Response.Write(arr(6)) %></td>
                </tr>
                <tr>
                    <td>CSC 253</td>
                    <td>Database</td>
                    <td>40</td>
                    <td>100</td>
                    <td><% Response.Write(arr(7)) %></td>
                </tr>

                <tr>
                    <td>CSC 252</td>
                    <td>System Analysis</td>
                    <td>40</td>
                    <td>100</td>
                    <td><% Response.Write(arr(8)) %></td>
                </tr>

                <tr>
                    <td>CSC 151</td>
                    <td>Data Structure</td>
                    <td>40</td>
                    <td>100</td>
                    <td><% Response.Write(arr(9)) %></td>
                </tr>

            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2" class="footer">Total</td>
                    <td>200</td>
                    <td>500</td>
                    <%
                        dim total
                        total = Int(arr(5)) + Int(arr(6)) + Int(arr(7)) + Int(arr(8)) + Int(arr(9))
                     %>
                    <td><% Response.Write(total) %></td>
                </tr>
                <tr>
                    <td colspan="4" class="footer">Percentage</td>
                    <% dim per 
                        per = (total / 500) * 100
                     %>
                    <td><% Response.write(Per) %></td>
                </tr>
        </table>
        <h2><%
            If Int(arr(5)) < 40 OR Int(arr(6)) < 40 OR Int(arr(7)) < 40 OR  Int(arr(8)) < 40 OR  Int(arr(9)) < 40 Then 
                Response.write("Sorry " & arr(1) &", You Failed")
            Else 
                Response.write("Congartulation "& arr(1) &", You passed")
            End If
        %></h2>
        <a href="index.asp"> <button> Add Again</button></a>
    </div>

</body>

</html>