<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include/header.jsp">
    <jsp:param name="title" value="List Accounts"/>
</jsp:include>
<jsp:include page="include/nav.jsp"/>
<h1>Accounts</h1>
<table>
    <thead>
    <tr>
        <th>Holder</th>
        <th>Account Number</th>
        <th>Balance</th>
    </tr>
    </thead>
    <c:if test="${accounts ne null}">
        <c:forEach items="${accounts}" var="account">
            <tr>
                <td>${account.customer.name}</td>
                <td>${account.accountnumber}</td>
                <td>${account.balance}</td>
                <td><a href='<c:url value="/view?acc=${account.accountnumber}"/>'>View</a></td>
                <td><a href='<c:url value="/deposit?acc=${account.accountnumber}"/>'>Deposit</a></td>
                <td><a href='<c:url value="/withdraw?acc=${account.accountnumber}"/>'>Withdraw</a></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
<jsp:include page="include/footer.jsp"/>
