<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Volunteer Portal – Події</title>
</head>
<body>
<h2>Список подій</h2>

<c:forEach var="event" items="${events}">
    <div style="border:1px solid #ccc; padding:10px; margin-bottom:10px;">
        <h3>${event.title}</h3>
        <p><strong>Опис:</strong> ${event.description}</p>
        <p><strong>Місце:</strong> ${event.location}</p>
        <p><strong>Дата:</strong> ${event.date}</p>
        <form method="post" action="/apply">
            <input type="hidden" name="eventId" value="${event.id}" />
            <button type="submit">Подати заявку</button>
        </form>
    </div>
</c:forEach>

<p><a href="/event/new">Створити подію</a> | <a href="/register">Зареєструватися</a> | <a href="/applications">Заявки</a></p>

</body>
</html>
