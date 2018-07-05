<%@page import="java.sql.*"%>

<%@page import=" java.security.MessageDigest"%>

 

<html>

    <body>

    <%

   String password="";

   password="hey";

    

    System.out.println("OBJECT CREATED");
   

    byte[] unencodedPassword = password.getBytes();

    MessageDigest md = null;

 

    try {

        md = MessageDigest.getInstance("MD5");

    } catch (Exception e) {

 

        //Good practise for error handling by printing the Exception

        %>

        <%=e%>

        <%

    }

 System.out.println("OBJECT CREATED1");

    //encoding the password

 

    md.reset();

    md.update(unencodedPassword);

    byte[] encodedPassword = md.digest();

    StringBuffer buf = new StringBuffer();

 System.out.println("OBJECT CREATED2");

    for (int i = 0; i < encodedPassword.length; i++) {

        if (((int) encodedPassword[i] ^ 0xff) < 0x10) {

            buf.append("0");

        }

        buf.append(Long.toString((int) encodedPassword[i] ^ 0xff, 16));

    }

 System.out.println("OBJECT CREATED4");

    String passw=buf.toString();

    Connection con=null;

 	System.out.println(passw);

    //Create a database named "test" and table "details" in mySQL

    //user name= root

    //password= admin

 




        %>  

    </body>

</html>
