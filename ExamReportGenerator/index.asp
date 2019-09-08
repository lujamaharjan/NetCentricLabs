<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css" />
</head>

<body>

    <div class="container">
    <p id="err"></p>
        <form id="contact" action="process.asp" method="post">
            <h3>Exam Report Generator</h3>
            <h4>Easily Generate the students marksheet easily!</h4>
           <a href="from1.asp"> <p>Look alrady existing result</p></a>
            <fieldset>
                <input name="id" placeholder="ID" type="number" tabindex="1"  required autofocus>
            </fieldset>
            <fieldset>
                <input name="fname" placeholder="First Name" type="text" tabindex="1"  required autofocus>
            </fieldset>
            <fieldset>
                <input name="lname" placeholder="Last Name" type="text" tabindex="1"  required autofocus>
            </fieldset>
            <fieldset>
                <input name="cname" placeholder="Class Name" type="text" tabindex="2"  required>
            </fieldset>
            <fieldset>
                <input name="section"placeholder="Section" type="text" tabindex="3" required>
            </fieldset>
            <fieldset>
                <input name="cprogram" placeholder="C programming" type="number" tabindex="3"  required>
            </fieldset>
            <fieldset>
                <input name="cn" placeholder="Computer Networks" type="number" tabindex="3"  required>
            </fieldset>
            <fieldset>
                <input  name="dbms"placeholder="Database Management" type="number" tabindex="3"  required>
            </fieldset>
            <fieldset>
                <input  name="sad" placeholder="System Design" type="number" tabindex="3"  required>
            </fieldset>
            <fieldset>
                <input  name="dsa"placeholder="Data Structure" type="number" tabindex="3" required>
            </fieldset>
           
            
           
            <fieldset>
                <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
            </fieldset>
        </form>
    </div>
    
    

</body>

</html>