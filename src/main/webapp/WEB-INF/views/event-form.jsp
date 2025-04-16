<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Створити подію</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .container {
            width: 500px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #444;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Створити подію</h2>
    <form method="post" action="/event/save">
        <input type="text" name="title" placeholder="Назва" required/>
        <input type="text" name="description" placeholder="Опис" required/>
        <input type="text" name="location" placeholder="Місце" required/>
        <input type="date" name="date" required/>
        <button class="button" type="submit">Зберегти</button>
    </form>
    <a href="/">Назад</a>
</div>
</body>
</html>
