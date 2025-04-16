<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Заявки</title>
</head>
<body>
<h2>Усі заявки</h2>

<c:forEach var="app" items="${apps}">
  <div style="border:1px solid #999; padding:10px; margin:10px;">
    <p><strong>Подія:</strong> ${app.event.title}</p>
    <p><strong>Волонтер:</strong> ${app.user.username}</p>
    <p><strong>Статус:</strong> ${app.status}</p>
    <form method="post" action="/application/status">
      <input type="hidden" name="appId" value="${app.id}" />
      <select name="status">
        <option value="PENDING">Очікує</option>
        <option value="APPROVED">Схвалено</option>
        <option value="REJECTED">Відхилено</option>
      </select>
      <button type="submit">Оновити статус</button>
    </form>
  </div>
</c:forEach>

<p><a href="/">На головну</a></p>
</body>
</html>
