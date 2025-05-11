<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
	<form method = "get" action="SearchComplaint.jsp">
	Search Complaint Id:
	<input type = "text" name = "complaintId" value = "${complaint.complaintId}"/> 
	<input type = "submit" value = "Search"/>
	</form>
	</center>
	
	<jsp:useBean id="complaintDao" class = "com.java.crm.Dao.ComplaintDaoImpl"/>
	<jsp:useBean id="complaint" class = "com.java.crm.model.Complaint"/>
	<jsp:setProperty property="*" name="complaint" />
	
	<c:if test="${not empty param.complaintId}">
    <%
        String complaintId = request.getParameter("complaintId");
        com.java.crm.model.Complaint result = complaintDao.searchComplaintById(complaintId);
        request.setAttribute("complaint", result);
    %>
    <jsp:forward page="ComplaintShowById.jsp" />
</c:if>


</body>
</html>