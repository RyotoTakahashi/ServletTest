<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせフォーム</title>
</head>
<body>
<form action="contact" method="post">
	<p>
		氏名(必須)：<br>
		<input type="text" name="name" required>
	</p>
	<p>
		会社名：<br>
		<input type="text" name="company">
	</p>
	<p>
		メールアドレス（必須）：<br>
		<input type="email" name="email" required>
	</p>
	<p>
		お問い合わせ内容（必須）：<br>
		<input type="textarea" name="question" cols="30" rows="5" required>
	</p>
	<p>
		メールマガジン：<br>
		<input type="checkbox" name="total">総合案内<br>
		<input type="checkbox" name="seminar">セミナー案内<br>
		<input type="checkbox" name="offer">求人採用案内<br>
	</p>		
	<p>
		資料を希望しますか？<br>
		<input type="radio" name="data" value="0" checked>はい   
		<input type="radio" name="data" value="1">いいえ
	</p>
	<input type="submit">
</form>
</body>
</html>