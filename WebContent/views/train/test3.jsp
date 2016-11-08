<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../assets/js/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
    $("#popbutton").click(function(){
        $('div.modal').modal({remote : 'layer.html'});
    })
})
$(function(){
    $("#popbutton2").click(function(){
        $('div.modal').modal({remote : 'layer.html'});
    })
})


</script> 

</head>
<body>
<input type="button" onClick="doModal()" value="Click"> 
<input type="text" name="start" value=${param.stationValue}><button class="btn btn-default" id="popbutton">클릭</button>
<input type="text" name="arrive" value=${param.stationValues}><button class="btn btn-default" id="popbutton2">클릭</button>
<input type="date" >

<div class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
        <!-- remote ajax call이 되는영역 -->
    </div>
  </div>
</div>

<script type="text/javascript">
var start = $("input[name=start]");
start.value = ${param.stationValue};

var arrive = $("input[name=arrive]");
arrive.value = ${param.stationValues};
</script>
</body>
</html>