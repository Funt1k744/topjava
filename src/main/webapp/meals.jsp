<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<hr>
<jsp:useBean id="helloMachine" class="ru.javawebinar.topjava.bean.HelloBean" />
<c:set var="friends" value="${helloMachine.friendsAsArray}" />
<c:set var="friends2" value="${helloMachine.friendsAsList}" />

<c:forEach items="${friends}" var="friend" step="2">
    <h2>
        <c:out value="${friend}"/>
    </h2>
</c:forEach>

<c:forEach var="friend_i" begin="0" end="2" step="2">
    <h5>
        <c:out value="${friend_i}"/> =  <c:out value="${friends[friend_i]}"/>
    </h5>
    <h4>
        <c:out value="${friend_i}"/> =  <c:out value="${friends2[friend_i]}"/>
    </h4>
</c:forEach>
</body>
</html>
