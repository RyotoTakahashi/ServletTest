<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>氏名：<%=request.getAttribute("name") %></p>
<p>会社名：<%=request.getAttribute("conpany") %></p>
<p>メールアドレス：<%=request.getAttribute("email") %></p>
<p>お問い合わせ：<%=request.getAttribute("question") %></p>
<p>メールマガジン：<%=request.getAttribute("magazine") %></p>
<p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。</p>
<p><a href="https://www.a-force.biz/">リンク先</a></p>

</body>
</html>