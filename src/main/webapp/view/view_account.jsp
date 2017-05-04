<jsp:include page="include/header.jsp">
    <jsp:param name="title" value="View Account"/>
</jsp:include>
<jsp:include page="include/nav.jsp"/>
<h1>Account Detail</h1>
Account Number: ${account.accountnumber}<br>
Account Holder: ${account.customer.name}<br>
Initial Balance: ${account.balance}<br>
<jsp:include page="include/footer.jsp"/>