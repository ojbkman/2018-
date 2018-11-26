<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
 	<script src="layui/layui.js" charset="utf-8"></script>
 	<script type="text/javascript" src="JQuery/jquery-1.11.2.min.js"></script>
 	<script>
 	$(function(){
 		$("#addBtn").on('click',function(){
 		   var moviesName=$("#moviesName").val();
 		   var time=$("#time").val();
 		  var company=$("#company").val();
 		  var type=$("#type").val();
 		  var image1=$("#image1").val();
 		  var image2=$("#image2").val();
 		  var introduced=$("#introduced").val();
 			$.ajax({
 				type:"post",

				url:"save",

				data:{ "moviesName": moviesName,
 		                "time": time,
 		                "company": company,
 		                "type": type,
 		                "image1": image1,
 		                "image2": image2,
 		                "introduced": introduced,
				},

				dataType:"json",
                 success:function(data){
                	if(data.success=='true'){
                		
                		layui.use('layer', function(){
                			  var layer = layui.layer;
                		
                			  var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                			  parent.layer.close(index);
                			}); 
                		
                		
                	}
                	 
                	 
       
                 } 
 				
 				
 				
 				
 			})
 	
 		});
 		
 	
 	});
 	
 
 	
 	
 	</script>
 	
 	
</head>
<body>
<ins class="adsbygoogle" style="display:inline-block;width:970px;height:50px" data-ad-slot="3820120620" data-ad-client="ca-pub-6111334333458862"></ins>
<form class="layui-form"   id="popupForm">
  <div class="layui-form-item" > 
    <label class="layui-form-label">电影名</label>
    <div class="layui-input-block">
      <input name="username" class="layui-input" type="text" placeholder="请输入电影名" autocomplete="off" id="moviesName">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">上映时间</label>
    <div class="layui-input-block">
      <input name="sex" class="layui-input" type="text" placeholder="请输入上映时间" autocomplete="off" id="time">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">发行公司</label>
    <div class="layui-input-block">
         <input name="classify" class="layui-input" type="text" placeholder="请输入发行公司" autocomplete="off" id="company">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">类型 </label>
    <div class="layui-input-block">
      <input name="sex" class="layui-input" type="text" placeholder="请输入电影类型" autocomplete="off" id="type">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label"> 图片路径一</label>
    <div class="layui-input-block">
      <input name="sex" class="layui-input" type="text" placeholder="请输入图片一路径" autocomplete="off" id="image1">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label"> 图片路径二</label>
    <div class="layui-input-block">
      <input name="sex" class="layui-input" type="text" placeholder="请输入图片二路径" autocomplete="off" id="image2">
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label"> 电影简介</label>
    <div class="layui-input-block">
      <input name="sex" class="layui-input" type="text" placeholder="请输入电影简介" autocomplete="off" id="introduced">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block" style="text-align:center;">
  
         <div id="ts"></div>
      <button class="layui-btn"  type="button" id="addBtn" >添加</button>
    </div>
  </div>
</form>
</body>
</html>