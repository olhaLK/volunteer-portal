<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Реєстрація</title>
</head>
<body>
<h2>Реєстрація користувача</h2>

<form method="post" action="/register">
    <p>Ім’я користувача: <input type="text" name="username" /></p>
    <p>Пароль: <input type="password" name="password" /></p>
    <p>Роль:
        <select name="role">
            <option value="VOLUNTEER">Волонтер</option>
            <option value="ORGANIZER">Організатор</option>
        </select>
    </p>
    <button type="submit">Зареєструватися</button>
</form>

<p><a href="/">На головну</a></p>
</body>
</html>
