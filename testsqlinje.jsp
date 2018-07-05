<%
String userName="'or' 1'='1";
String[] strArr = userName.split("[&$#<>' ]*");
userName = "";
for (int i=0;i<strArr.length;i++){
   userName += strArr[i];
}
out.println(userName);
%>