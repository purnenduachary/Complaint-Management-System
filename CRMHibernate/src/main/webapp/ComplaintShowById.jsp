<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complaint Details</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 8px;
        }
        table {
            width: 80%;
            margin: auto;
        }
    </style>
</head>
<body>

<center><h2>Complaint Details</h2></center>

<!-- Display a single complaint if set -->
<c:if test="${not empty complaint}">
    <table>
        <tr>
            <th>Complaint ID</th>
            <th>Type</th>
            <th>Description</th>
            <th>Severity</th>
        </tr>
        <tr>
            <td>${complaint.complaintId}</td>
            <td>${complaint.complaintType}</td>
            <td>${complaint.cdescription}</td>
            <td>${complaint.severity}</td>
        </tr>
    </table>
</c:if>

<!-- Display list of complaints if set -->
<c:if test="${not empty complaintList}">
    <table>
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

</body>
</html>
