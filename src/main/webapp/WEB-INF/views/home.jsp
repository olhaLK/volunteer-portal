<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Volunteer Portal – Події</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 70%;
            margin: 30px auto;
        }
        .event {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .button {
            background-color: #008CBA;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #005f7a;
        }
        .nav {
            text-align: center;
            margin-top: 30px;
        }
        .nav a {
            margin: 0 10px;
            color: #008CBA;
            text-decoration: none;
            font-weight: bold;
        }
        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Список подій</h2>

    <c:forEach var="event" items="${events}">
        <div class="event">
            <h3>${event.title}</h3>
            <p><strong>Опис:</strong> ${event.description}</p>
            <p><strong>Місце:</strong> ${event.location}</p>
            <p><strong>Дата:</strong> ${event.date}</p>
            <form method="post" action="/apply">
                <input type="hidden" name="eventId" value="${event.id}" />
                <button class="button" type="submit">Подати заявку</button>
            </form>
        </div>
    </c:forEach>

    <div class="nav">
        <a href="/event/new">Створити подію</a>
        <a href="/register">Зареєструватися</a>
        <a href="/applications">Заявки</a>
    </div>
</div>
</body>
</html>
