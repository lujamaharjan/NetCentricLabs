<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Student_details_form</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form action="process.asp" method="post">
        <p><input type="text" name="name" id="name" placeholder="Name" required/></p>
        <p><input type="text" name="address" id="address" placeholder="Address"required/></p>
        <p><input type="text" name="phone" id="phone" placeholder="Phone"required /></p>
        <p><input type="email" name="email" id="email"placeholder="Email" required/></p>
        <p><input type="text" name="degree" id="degree"placeholder="Degree" /></p>
        <p><button type="submit" id="save">Save</button></p>
    </form>
</body>
</html>
