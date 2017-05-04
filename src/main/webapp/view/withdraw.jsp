<jsp:include page="include/header.jsp">
    <jsp:param name="title" value="Withdraw"/>
</jsp:include>
<jsp:include page="include/nav.jsp"/>
<h1>Withdraw</h1>
<form action="withdraw" method="post">
    Account Number: <input type="hidden" name="number" value="${number}"><br>
    Account Holder: <input type="text" name="customer"  value="${customer}"><br>
    Withdraw Balance: <input type="text" name="balance"><br>
    <input type="submit">
</form>
<jsp:include page="include/footer.jsp"/>