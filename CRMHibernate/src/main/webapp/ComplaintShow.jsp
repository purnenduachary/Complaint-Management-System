<%@ page import="com.java.crm.Dao.ComplaintDaoImpl" %>
<%@ page import="com.java.crm.model.Complaint" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    ComplaintDaoImpl dao = new ComplaintDaoImpl();
    List<Complaint> complaintList = dao.getAllComplaints();
    request.setAttribute("complaintList", complaintList);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Complaints</title>
</head>
<body>

<h2>All Registered Complaints</h2>

<c:if test="${not empty complaintList}">
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>Complaint ID</th>
            <th>Type</th>
            <th>Description</th>
            <th>Severity</th>
        </tr>
        <c:forEach var="c" items="${complaintList}">
            <tr>
                <td>${c.complaintId}</td>
                <td>${c.complaintType}</td>
                <td>${c.cdescription}</td>
                <td>${c.severity}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${empty complaintList}">
    <p>No complaints registered.</p>
</c:if>

</body>
</html>
