<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户列表</title>
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
</head>
<body>
<%@include file="/WEB-INF/jsp/common/nav.jsp" %>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>用户列表</h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <td>用户ID</td>
                    <td>用户名</td>
                    <td>手机号</td>
                    <td>身份证</td>
                    <td>地区</td>
                    <td>创建时间</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${userlist}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.phone}</td>
                        <td><c:if test="${user.idCard.length()>10}">${user.idCard}</c:if>
                            <c:if test="${user.idCard==null}">无验证</c:if>
                        </td>

                        <td>${user.score}</td>
                        <td><fmt:formatDate value="${user.createTime}"
                                            pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><a id="loginBtn" class="btn btn-success"
                               href="${pageContext.request.contextPath}/user/detail?id=${user.id}">查看</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>