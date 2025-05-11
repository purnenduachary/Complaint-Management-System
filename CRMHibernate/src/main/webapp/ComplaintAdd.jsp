<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complaint Registration</title>
</head>
<body>
    <form method="post" action="ComplaintAdd.jsp">
        <center>
            <h2>Register a Complaint</h2>
            
            <label for="complaintType">Complaint Type:</label>
            <input type="text" name="complaintType" value="${complaint.complaintType}" />
            <br/><br/>

            <label for="description">Complaint Description:</label>
            <input type="text" name="cdescription" value="${complaint.cdescription}" />
            <br/><br/>

            <label for="severity">Severity:</label>
            <select name="severity">
                <option value="LOW" ${complaint.severity == 'LOW' ? 'selected' : ''}>Low</option>
                <option value="MEDIUM" ${complaint.severity == 'MEDIUM' ? 'selected' : ''}>Medium</option>
                <option value="HIGH" ${complaint.severity == 'HIGH' ? 'selected' : ''}>High</option>
            </select>
            <br/><br/>

            
            <br/><br/>

            <input type="submit" value="Submit Complaint" />
        </center>
    </form>

    <!-- Bean Declarations -->
    <jsp:useBean id="complaintDao" class="com.java.crm.Dao.ComplaintDaoImpl" />
    <jsp:useBean id="complaint" class="com.java.crm.model.Complaint" />
    <jsp:setProperty property="*" name="complaint" />

    <c:if test="${not empty param.complaintType and not empty param.cdescription}">
    <% complaintDao.addComplaint(complaint); %>
    <jsp:forward page="ComplaintShow.jsp" />
    </c:if>

</body>
</html>
