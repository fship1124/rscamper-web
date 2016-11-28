<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.part_rig {
		overflow: hidden;
		float: right;
		width: 432px;
		height: 221px;
		padding: 17px 20px 0;
		border: 4px solid #0095cd;
		background: #ecf1f4;
	}
	.tra_box {
		overflow: hidden;
		padding: 8px 0 0 28px;
		border: 1px solid #dadada;
		background: #fff;
	}
	.tra_box li.wd20 {
		width: 20%;
	}
	tra_box li {
		float: left;
		margin-bottom: 5px;
	}
	li{
		display: list-item;
		text-align: -webkit-match-parent;
	}
	input {
		line-height: 1.5em;
		font-family: '돋음', Dotum,appleGothic,sans-serif;
		font-size: 12px;
		color: #383d41;
	}
	label{
		vertical-align: middle;
		cursor: default;
	}
	.tra_box label{
		margin-left: 2px;
		font-weight: bold;
		color: #0097d0;
	}
	.tra_box li.m120p {
		margin-left: 20%;
	}
</style>
</head>
<body>
	<div class="part_rig">
		<ul class="tra_box box2">
			<li class="wd20">
				<input type="radio" name="selGoTrainRa" value="05" title="전체" checked="checked"/><label>전체</label>
			</li>
			<li>
				<input type="radio" name="selGoTrainRa" value="00" title="KTX"><label>KTX/KTX-산천</label>
			</li>
			<li>
				<input type="radio" name="selGoTrainRa" value="09" title="ITX-청춘"/><label>ITX-청춘</label>
			</li>			
			<li class="m120p">
				<input type="radio" name="selGoTrainRa" value="08" title="ITX-새마을"/><label>새마을호/ITX-새마을</label>
			</li>			
			<li>
				<input type="radio" name="selGoTrainRa" value="02" title="무궁화"/><label>무궁화호/누리로</label>
			</li>			
			<li class="m120p">
				<input type="radio" name="selGoTrainRa" value="06" title="AREX직통"/><label>AREX직통</label>
			</li>			
			<li>
				<input type="radio" name="selGoTrainRa" value="03" title="통근열차"/><label>통근열차</label>
			</li>
		</ul>
	  <div class="rbox_cont dis">
			<dl class="pt02">
				<dt>
					<label for="start">출발역</label>
				</dt>
				<dd>
					<input id="start" name="txtGoStart" type="text" class="inp250">
				</dd>
			</dl>	
			<dl class="pt02"></dl>	
			<dl class="pt03"></dl>	
	  </div>			
	</div>
</body>
</html>