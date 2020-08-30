<!DOCTYPE html>
<html>
<head>

    
<style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html,body
{
    height: 100%;
    width: 100%;
    background-image: linear-gradient(to top, #37ecba 0%, #72afd3 100%);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
    font-family: 'Baloo Bhai', cursive;
    color: #f5f5f5;
}


.btn{
width: 100px;
background: black;
border 2px GREEN;
color: white;
padding: 5px;
font-size: 12px;
cursor: pointer;
margin: 12px 0;
}
form{
width: 300px;
position : absolute;
top:50%;
left:50%;
transform: translate(-80%,-50%);
color:gold;
}
h2{
 font-weight:bold;
 color: red;
 font-size:30px;
}
.table > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
    margin: 0;
}



th{
backgrond-color: #d96f59;
color: green;
font-size:25px;
}
tr{
color:black;
font-size:20px;
}
}

</style>
</head>
<body><form>
<center>
<br><br><br><br><br>
<h2>LIST OF USERS</h2>
<table>
<tr>
<th>USERNAME</th>
<th>E-MAIL</th>
<th>CREDITS</th>
</tr>
<?php
$conn = mysqli_connect("localhost","root","","management");
if($conn-> connect_error){
die("connection failed : ". $conn->connect_error);
}
$sl="SELECT username,email,credit FROM user_details";
$result=$conn->query($sl);
if($result->num_rows>0)
{
while($row=$result-> fetch_assoc()){

echo "<tr><td>". $row["username"] ."</td><td>". $row["email"] ."</td><td>". $row["credit"] ."</td></tr>";
}
echo "</table>";
}
else{
echo "0 results";
}
$conn->close();
?>
</table>
<br>
<br>
<center>
<a href="transfer.html"><input type="button" class="btn" value="SELECT USER"></button></a>
<a href="index.html"><input type="button" class="btn" value="BACK"></button></a></center>
</center>
</form>
</body>
</html>
