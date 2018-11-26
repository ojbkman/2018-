<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员管理界面</title>
<link rel="stylesheet" href="layui/css/layui.css" media="all">


</head>
<body>



 <table class="layui-hide" id="test" lay-filter="test"></table>
 
<script id="toolbarDemo" type="text/html">
  <div class="layui-btn-container" style="margin-bottom:10px;">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData" >删除数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">添加数据</button>
  
  </div>
<div class="demoTable">
  搜索电影：
  <div class="layui-inline">
    <input name="id" class="layui-input" id="demoReload" autocomplete="off">
  </div>
  <button class="layui-btn" data-type="reload" id="search">搜索</button>
</div>
 
<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table> 

     
</script>

                  
          
<script src="layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="JQuery/jquery-1.11.2.min.js"></script>
<script>

layui.use('table', function(){
  var table = layui.table;
  
  var tableIns = table.render({
    elem: '#test'
   ,toolbar: '#toolbarDemo'
    ,url:'watch'
    ,method:'post'
    ,cols: [[
    	{type:'checkbox'}

       ,{field:'id', width:150, title: 'ID', sort: true}
      ,{field:'moviesName', width:150, title: '电影名'}
      ,{field:'time', width:150, title: '上映时间', sort: true}
      ,{field:'company', minWidth:80, title: '发行公司'}
      ,{field:'type', minWidth:80, title: '类型'}
      ,{field:'image1', minWidth:80, title: '图片一路径'}
      ,{field:'image2', minWidth:80, title: '图片二路径'}
      ,{field:'introduced', minWidth:80, title: '电影简介'}
      
    ]]
    ,page: true
    ,id: 'testReload'

  });		
  $('body').on('click','#search',function(){
		
		tableIns.reload({
		       where: {
		          
		            moviesName: $("#demoReload").val()
		          
		        }
		      });
		
	});

//头工具栏事件
  table.on('toolbar(test)', function(obj){
    var checkStatus = table.checkStatus(obj.config.id); //获取选中行状态
    switch(obj.event){
      case 'getCheckData':
        {var data = checkStatus.data;
        if(data.length==0){
    		
        	layui.use('layer', function(){
        		  var layer = layui.layer;
        		  
        		  layer.msg('请选择要删除的数据！');
        		});   
    		return;
    		
    	}
        
          var array=[];
          for(var i=0;i<data.length;i++)
        	  {
        	  
        	  array.push(data[i].id);
        	   
        	  }
          var ids=array.join(",");
        //获取选中行数据
        layui.use('layer', function(){
        	var index = layer.msg("你确定要删除这"+data.length+"条数据吗？", {
        time: 20000, //20s后自动关闭
        btn: ['确定', '取消'],
        yes: function(index, layero){
            //按钮【按钮一】的回调
            $.ajax({
           	 type:'post',
           	 url:'delete',
           	 data:{ids:ids},
           	 datatype:'json',
           	 success:function(result){
           		 tableIns.reload({
           			 page: {
           				    curr: 1 //重新从第 1 页开始
           				  }
         		      });
        	 
           	 }
             
              });
            layer.close(index);
            
          }
      });
        
        
        });
        
   
      break;
    }
      case  'getCheckLength':{
    	  layui.use('layer', function(){
    		  var layer = layui.layer;
    		  layer.open({

  				type: 2,
  				title: ['添加数据', 'background-color: #1E9FFF;text-align:center;font-size:20px;'],
  				shadeClose: true,
  				shade: false,
  				maxmin: true,
  				area: ['1000px', '500px'],
  				content: ['insert.jsp','no'],		
                 yes:function(){layui.use('layer', function(){
                	  var layer = layui.layer;
                	  
                	  layer.msg('插入成功！');
                	});    
                	 tableIns.reload({
               			 page: {
               				    curr: 1 //重新从第 1 页开始
               				  }
             		      });
                	
                	
                	
                }
  				});
    			
    		});         
    	      
    	  break;
    	  
    	  
    	  
    	  
      }
     
    
    
    
    };
  });


});


</script>

</body>
</html>