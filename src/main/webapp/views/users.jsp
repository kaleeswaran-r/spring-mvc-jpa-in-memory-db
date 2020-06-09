<html>
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <spring:url value="/resources/css/view.css" var="viewCSS" />
        <%--<link href="${pageContext.request.contextPath}/resources/css/view.css" rel="stylesheet" >--%>
        <link href="${viewCSS}" rel="stylesheet" />
        <title>Spring MVC JPA In Memory DB</title>
    </head>
    <body>
    <form:form method="post" modelAttribute="user" action="${pageContext.request.contextPath}/add">
        <table>
            <tr>
                <th colspan="2">Add User</th>
            </tr>
            <tr>
                <form:hidden path="id"/>
                <td><form:label path="firstName">First Name:</form:label></td>
                <td><form:input path="firstName" size="30" maxlength="30"></form:input></td>
            </tr>
            <tr>
                <td><form:label path="lastName">Last Name:</form:label></td>
                <td><form:input path="lastName" size="30" maxlength="30"></form:input></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" class="blue-button"/></td>
            </tr>
        </table>
    </form:form>
    </br>
    <h3>User List</h3>
    <c:if test="${!empty listOfUsers}">
        <table class="tg">
            <tr>
                <th width="80">Id</th>
                <th width="120">First Name</th>
                <th width="120">Last Name</th>
                <th width="60">Edit</th>
                <th width="60">Delete</th>
            </tr>
            <c:forEach items="${listOfUsers}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td><a href="<c:url value='/update/${user.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/delete/${user.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    </body>
</html>
