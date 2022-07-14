<%-- 
    Document   : Schedule
    Created on : Jul 12, 2022, 9:33:14 PM
    Author     : lyxin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>FPT University Academic Portal</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/javascript.js" type="text/javascript"></script>
    </head>
    <header>
        <div class="container-xl">
            <div class="table-wrapper">
                <div class="row">
                    <div class="col-md-8">
                        <h2>
                            <span style="color: #000000">FPT University Academic Portal</span>
                        </h2>
                    </div>
                    <div class="col-md-4">
                        <table>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="auto-style1">
                                        <strong>FAP mobile app (myFAP) is ready at</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="https://apps.apple.com/app/id1527723314">
                                            <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                            <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store">
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>        
                </div>
            </div>
        </div>
    </header>
    <body style="background-color: #ffffff">
        <h2 style="text-align: center; margin-top: 50px; margin-bottom: 50px; color: #000000">
            <span>Schedule</span>
        </h2>
        <div >
            <div>
                <div>
                    <div>
                        <div style="margin-bottom: 10px ;text-align: center">
                            <form action="schedule" method="POST">
                                Lecture<select name="instructorID"> 
                                    <c:forEach items="${requestScope.ins}" var="ins">
                                        <option 
                                            <c:if test="${ins.instructorID eq requestScope.instructorID}">
                                                selected="selected"
                                            </c:if>
                                            value="${ins.instructorID}">${ins.username}
                                        </option>
                                    </c:forEach>
                                </select>
                                <input type="submit" value="View"/>
                            </form>
                        </div>
                    </div>                   
                    <table class="table table-striped table-hover" style="margin: 0 auto; width: 80%">
                        <thead>
                            <tr>
                                <th rowspan="2">
                                    <span class="auto-style1"><strong>Year</strong></span>
                                    <select name="">
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option selected="selected" value="2022">2022</option>
                                        <option value="2023">2023</option>

                                    </select>
                                    <br>
                                    Week
                                    <select name="date">
                                        <c:forEach items="${requestScope.sches}" var="sche">
                                            <c:if test="${requestScope.d_date eq sche.date}">
                                                <option selected="selected" 
                                                </c:if>
                                                value="${sche.date}">${sche.date}</option>
                                        </c:forEach>
                                    </select>
                                </th>
                        </thead>
                        <tbody>
                            <c:if test="${requestScope.schedules ne null}">
                            <table class="table table-striped table-hover" style="margin: 0 auto; width: 80%">
                                <thead>
                                    <tr>
                                        <th>NO</th>
                                        <th>SUBJECT NAME</th>						
                                        <th>CLASS</th>
                                        <th>SLOT</th>
                                        <th>OPTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%--<jsp:useBean id="attendenceDB" class="context.AttendanceDBContext" scope="request"></jsp:useBean>--%>
                                    <c:forEach items="${requestScope.schedules}" var="s" varStatus="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td>${s.getSubject().getSubjectname()}</td>
                                            <td>${s.getClassname().getClassname()}</td>
                                            <td>${s.getSlot().getSlotname()}</td>
                                            <td>
                                                <a href="Attendance.jsp">Take Atteandance</a>
                                                <%--<c:choose>
                                                    <c:when test="${attendenceDB.getAttendanceByScheduleID(s.getScheduleid()).size() eq 0 }">
                                                        <a href="list/attendence?schedule=${s.getScheduleid()}&status=check">Check Attendence</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a href="list/attendence?schedule=${s.getScheduleid()}&status=edit">Edit Attendence</a>
                                                    </c:otherwise>
                                                </c:choose>--%>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>     
    </body>
</html>
