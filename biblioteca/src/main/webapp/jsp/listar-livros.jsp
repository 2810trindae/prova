<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar de Livros</title>
</head>
<body>
	<table>
		<thead>
		<tr>
		<th>ISBN</th>
		<th>Nome</th>
		<th>Autor</th>
		</tr>
		<thead>
		<tbody>
		<c:forEach items= "${livros}" var="livro">
		<tr>
		<td>${livros.isbn}</td>
		<td>${livros.nome}</td>
		<td>${livros.autor}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>