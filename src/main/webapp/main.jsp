<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- import easyui-css -->
<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<!-- 引入easyu的js文件 -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#tt').tree({
			url : 'showMenus',
			onLoadSuccess : function(node, data) {
				$('#tt').tree('expandAll')
			},
			onClick : function(node) {
				if (node.attributes) {
				var  flag = $('#menus').tabs('exists',node.text)
				if(flag){
					$('#menus').tabs('select',node.text);
				}else{
					console.log(node)
					//添加新的tab
					$('#menus').tabs('add',{
						title: node.text,
						closable:true,
						content: "<iframe src='"+node.attributes.menupath+"' frameborder='0' width='100%' height='100%' >"
					});
				}
		
				}
			}
		});
	})
</script>
<body class="easyui-layout">
	<div data-options="region:'west',title:'人力资源管理系统',collapsible:false"
		style="width: 200px;">
		<!-- 使用tree组件 -->
		<ul id="tt"></ul>
	</div>
	<div data-options="region:'center',title:'xxxxx',fit:true"
		style="padding: 5px; background: #eee;">
		<!-- 展现tabs -->
		<div id="menus" class="easyui-tabs" data-options="fit:true" style="width: 500px; height: 250px;">
				
		</div>

	</div>
</body>
</html>