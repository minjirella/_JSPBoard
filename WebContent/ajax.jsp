<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 onclick="move()">Hello~~</h1>    

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	function move(){
		$.ajax({ 
			url:"write.jsp",
			type:"get",
			data: {},
			success: function(result){
				$("body").append(result);
				//console.log(result);
			}
		});
	}
</script>