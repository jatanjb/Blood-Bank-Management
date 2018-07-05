<% String username=(String)session.getAttribute("username");
if(username!=null)
{
session.removeAttribute("username");
String redirectURL = "index.jsp";

 
response.setHeader("Pragma","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Expires","0"); 
response.setDateHeader("Expires",-1); 


response.sendRedirect(redirectURL);
}
else
{
out.println("you are already not login");
}
%>

