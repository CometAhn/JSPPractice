<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload02_process.jsp">
		<p>
			이름1 : <input type="text" name="name1">
		</p>
		<p>
			제목1 : <input type="text" name="subject1">
		</p>
		<p>
			파일1 : <input type="file" name="file1">
		</p>
		<p>
			이름2 : <input type="text" name="name2">
		</p>
		<p>
			제목2 : <input type="text" name="subject2">
		</p>
		<p>
			파일2 : <input type="file" name="file2">
		</p>
		<p>
			이름3 : <input type="text" name="name3">
		</p>
		<p>
			제목3 : <input type="text" name="subject3">
		</p>
		<p>
			파일3 : <input type="file" name="file3">
		</p>
		<p>
			<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>