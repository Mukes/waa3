<jsp:include page="include/header.jsp">
    <jsp:param name="title" value="Create Account"/>
</jsp:include>
<jsp:include page="include/nav.jsp"/>
<h1>Add New Account</h1>
<form action="createAccount" method="post">
    Account Number: <input type="text" name="number"><br>
    Account Holder: <input type="text" name="customer"><br>
    Initial Balance: <input type="text" name="balance"><br>
   <input type="submit">
</form>
<jsp:include page="include/footer.jsp"/>