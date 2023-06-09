<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>meetingList</title>
</head>
<body>

<table class="n23">
  <tr bgcolor="#CCCCCC">
    <td><b>ID</b></td>
    <td><b>제목</b></td>
  </tr>
  <c:forEach var="meeting" items="${meetingList}">
    <tr bgcolor="#FFFF88">
      <td>
        <c:out value="${meeting.meetingId}" />
      </td>
      <td>
        <c:out value="${meeting.meetingTitle}" />
      </td>
    </tr>
  </c:forEach>
</table>

</body>
</html>