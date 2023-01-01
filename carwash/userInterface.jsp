    <%@ page language="java" import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>


<html lang="en">

  <head>
    <title>User Interface</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="userInterface.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

       <style type ="text/css">
         
        h4{
         color: rgb(60, 5, 105);
       }
      
        select{
         padding: 2px 0px;
         background-color: whitesmoke;
         color: rgb(19, 18, 18);
         height: 28px;
         width: 150px;
         font-size: larger;
         font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif
       }

       form{
          padding: 20px;
        }

       body{
         background-color: white;
       }


         input[type=submit],input[type=reset] {
        margin: 10px 23px;
        padding: 5px 7px;
        background-color:#04aa6d;
        border: 2px solid rgb(17, 16, 16);
        border-radius: 10px;
        cursor: pointer;
        font-size:15px;
        color: white;
        }
      

        table{
          border: 2px solid black;
          width: 100%;
          height: 55%;
          margin: 80px 0px;
          background-color: rgb(237, 241, 241);
          font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .mybutton{
          padding: 10px 50px;
          margin: 35px 0px;
          float:right;
          cursor: pointer;
          background-color: aquamarine;
          font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        }
   
      </style>
       
  </head>

  <body>

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" id="title" href="#"> CarWashing</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">Page 1</a></li>
        </ul>
      
        <ul class="nav navbar-nav navbar-right">
          <li>
                  <%-- logout form starts --%>
              <form action="logout.jsp" method="post">
              <input type="submit" value="Logout"/>
             </form>
                  <%-- logout form ends --%>
          </li>
        </ul>

      </div>
    </nav>

<%-- filter form --%>
    <div class="input-box">
      <form   action="userInterface.jsp" method="post" class="search-container">
        <input type="text" id="search-bar" placeholder="Search by City Name" name="city">
        <a href="#"><img class="search-icon" src="https://tse1.mm.bing.net/th?id=OIP.1BQn4R8LUGn9phC_i0m5MAHaHa&pid=Api&P=0"></a>
      </form>
  </div>
<%-- filter form overs --%>


		<%
    Connection conn=null;
  	ResultSet rs=null;
  	Statement stmt=null;
  	Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/carwash","root","");
  	stmt=conn.createStatement();
    String query = "Select * from addplaces where id>0";
     

     String search_city = request.getParameter("city");
       String city2show = "";

       if(search_city!=null)
        {
         query= query + " AND `city` LIKE '%"+search_city+"%'";
        }
    rs=stmt.executeQuery(query);

    while(rs.next())
   {

  %>
   <table>
     <tbody>
    
        <br>
        <br>
        
         <tr>
           <td style="padding-left: 310px;"><h3>Name :</h3></td>
           <td><h4><%=rs.getString("name")%></h4></td>
         </tr>

         <tr>
           <td style="padding-left: 310px;"><h3>Email :</h3></td>
           <td><h4><%=rs.getString("email")%></h4></td>
         </tr>

         <tr>
           <td style="padding-left: 310px;"><h3>Address :</h3></td>
           <td><h4><%=rs.getString("address")%></h4></td>
         </tr>  


         <tr>
           <td style="width: 50%; padding-left: 310px;"><h3>City :</h3></td>
           <td><h4><%=rs.getString("city")%></h4></td>
         </tr>

         <tr>
           <td style="width: 50%; padding-left: 310px;"><h3>State :</h3></td>
           <td><h4><%=rs.getString("state")%></h4></td>
         </tr>

         <tr>
           <td style="width: 50%; padding-left: 310px;"><h3>Zip :</h3></td>
           <td><h4><%=rs.getString("zip")%></h4></td>
         </tr>

         <tr>
           <td style="width: 50%; padding-left: 310px;"><h3>Contact Number :</h3></td>
           <td><h4><%=rs.getString("contactNumber")%></h4></td>
         </tr>

         <tr>
           <td style="width: 50%; padding-left: 310px;"><h3>Services :</h3></td>
           <td><h4><%=rs.getString("addServices")%></h4></td>
         </tr>

     </tbody>   
    </table>
 

<%
  }
 rs.close();
 stmt.close();
 conn.close();
%>

  </body>
</html>
