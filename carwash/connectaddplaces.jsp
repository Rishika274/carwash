<%@ page import="java.sql.*"%>

<%

String name =request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");
String city = request.getParameter("city");
String state =request.getParameter("state") ;
String zip = request.getParameter("zipcode");
String  contactNumber = request.getParameter("contactnumber");
String addService = request.getParameter("description");


try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/carwash","root","");
    PreparedStatement pst = conn.prepareStatement("INSERT INTO `addplaces` (`id`,`name`, `email`,`address`,  `city`, `state`, `zip`, `contactNumber`, `addServices`)  VALUES (default,?,?,?,?,?,?,?,?)");

    pst.setString(1,name);
    pst.setString(2,email);
    pst.setString(3,address);
    pst.setString(4,city);
    pst.setString(5,state);
    pst.setString(6,zip);
    pst.setString(7,contactNumber);
    pst.setString(8,addService);
   
    int status = pst.executeUpdate();

    if(status!=0)
    {
      response.sendRedirect("adminInterface.html");
    }
    else
    {
      response.sendRedirect("addplaces.html");
    }


}
catch(Exception e)
{
      out.println("Exception :- "+e);
}
%>