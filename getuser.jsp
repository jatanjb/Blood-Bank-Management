
<html>
<head>
<script>
var newWin = null;
function popUp(strURL, strType, strHeight, strWidth) {
 if (newWin != null && !newWin.closed)
   newWin.close();
 var strOptions="";
 if (strType=="console")
   strOptions="resizable,height="+
     strHeight+",width="+strWidth;
 if (strType=="fixed")
   strOptions="status,height="+
     strHeight+",width="+strWidth;
 if (strType=="elastic")
   strOptions="toolbar,menubar,scrollbars,"+
     "resizable,location,height="+
     strHeight+",width="+strWidth;
 newWin = window.open("donor_forgotpassword.jsp", 'newWin', strOptions);
 newWin.focus();
}
</script>

</head>
<body>
<a href="my-pop-up-window.htm"
 onclick="popUp(this.href,'console',200,200);return false;"
 target="_blank">This is my link</a>
</body>

</html>