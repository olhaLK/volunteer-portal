<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вхід</title>
    <style>
        body { font-family: sans-serif; background-color: #f0f2f5; }
        .container {
            max-width: 400px; margin: 60px auto; background: white;
            padding: 30px; border-radius: 10px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.1);
        }
        input, select {
            width: 100%; padding: 10px; margin: 10px 0;
            border-radius: 5px; border: 1px solid #ccc;
        }
        button {
            background-color: #007bff; color: white;
            border: none; padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .error {
            color: red; text-align: center; margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Вхід у профіль</h2>
    <form method="post" action="/login">
        <input type="text" name="username" placeholder="Ім’я користувача" required />
        <input type="password" name="password" placeholder="Пароль" required />
        <button type="submit">Увійти</button>
    </form>
    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>
</div>
</body>
</html>
