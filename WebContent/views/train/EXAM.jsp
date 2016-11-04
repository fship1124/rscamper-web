<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
<head> 
<script language="JavaScript">
 
var win = null;
function NewWindow(mypage,myname,w,h,scroll){
LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
settings = 'height='+ h + ',width = '+w+', top = '+TopPosition+' , left='+LeftPosition+',scrollbars='+scroll+',resizable';
win = window.open(mypage,myname,settings);
} 

</script> 
<body>
<a href="팝업창파일" onclick="NewWindow(this,'name','100','100','yes');return false">
링크</a> 
</body>
</html>