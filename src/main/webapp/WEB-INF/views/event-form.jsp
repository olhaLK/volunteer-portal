<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Створити подію</title>
</head>
<body>
<h2>Створити подію</h2>

<form method="post" action="/event/save">
    <p>Назва: <input type="text" name="title" /></p>
    <p>Опис: <input type="text" name="description" /></p>
    <p>Місце: <input type="text" name="location" /></p>
    <p>Дата: <input type="date" name="date" /></p>
    <button type="submit">Зберегти</button>
</form>

<p><a href="/">Назад</a></p>
</body>
</html>

