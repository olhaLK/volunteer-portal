<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Заявки</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f5;
    }
    .container {
      width: 800px;
      margin: 30px auto;
    }
    .application {
      background-color: white;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 15px;
      box-shadow: 0 0 8px rgba(0,0,0,0.08);
    }
    h2 {
      text-align: center;
      color: #222;
    }
    select, button {
      padding: 8px;
      border-radius: 6px;
      margin-top: 5px;
    }
    .button {
      background-color: #ffc107;
      border: none;
      color: black;
      cursor: pointer;
      padding: 8px 16px;
    }
    .button:hover {
      background-color: #e0a800;
    }
    a {
      display: block;
      text-align: center;
      margin-top: 25px;
      text-decoration: none;
      color: #007bff;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Усі заявки</h2>

  <c:forEach var="app" items="${apps}">
    <div class="application">
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
        <button class="button" type="submit">Оновити статус</button>
      </form>
    </div>
  </c:forEach>

  <a href="/">На головну</a>
</div>
</body>
</html>
