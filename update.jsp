<%@ page language="java" contentType="text/html; charset=Windows-31J"
 pageEncoding="Windows-31J"%>
 <script>
	function check(){
		con = confirm('�폜���܂���?');
		if(con){
			$("#cmd").attr("value","delete");
		 }else{
		 	alert("�폜�̓L�����Z�����܂���");
		}
	}

</script>

<h1>${wikiPage.name}�̕ҏW</h1>
<form action = "update">
	<input type="HIDDEN" name="cmd" id="cmd" value=null/> 
	<input type="HIDDEN" name="name" value="${wikiPage.name}"/> 
	
	<textarea rows="15" COLS="60"
	name="content">${wikiPage.content}</textarea>
	
	<br>
	<input type="submit" value="�X�V" ONCLICK="cmd.value='update'"/>
	<input type="submit" value="��" ONCLICK="cmd.value='delete'"/>
	<input type="submit" value="�폜"  ONCLICK="check();"/>
	<input type="submit" value="�L�����Z��" 
	onclick="location.href='refer'"/>
	
	</form>