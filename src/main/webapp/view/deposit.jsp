<jsp:include page="include/header.jsp">
    <jsp:param name="title" value="Deposit"/>
</jsp:include>
<jsp:include page="include/nav.jsp"/>
<h1>Deposit</h1>
<form action="deposit" method="post">
    Account Number: <input type="hidden" name="number" value="${number}"><br>
    Account Holder: <input type="text" name="customer"  value="${customer}"><br>
    Deposit Balance: <input type="text" name="balance"><br>
    <input type="submit">
</form>
<jsp:include page="include/footer.jsp"/>