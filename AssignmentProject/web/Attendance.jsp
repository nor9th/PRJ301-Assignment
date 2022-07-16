<%-- 
    Document   : Attendance
    Created on : Jul 13, 2022, 9:57:40 PM
    Author     : lyxin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
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
        <script src="js/javascript.js" type="text/javascript"></script>
        <script src="jquery-3.5.1.min.js"></script>
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
            <span>Attendance</span>
        </h2>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <form action="../list/attendence" method="post">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h2>Check <b>Attendance</b></h2>
                                    <h4><c:out value="${requestScope.information}"></c:out></h4>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered">
                                <thead class="thead-light">
                                    <tr>
                                        <th style="width: 5%">NO</th>
                                        <th style="width: 25%">IMAGE</th>
                                        <th style="width: 15%">STUDENT CODE</th>						
                                        <th style="width: 25%">FULLNAME</th>
                                        <th style="width: 30%">ATTENDANCE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${requestScope.listAttendence ne null}">
                                        <c:forEach items="${requestScope.listAttendence}" var="a" varStatus="loop">
                                            <tr>
                                                <td>${loop.count}</td>
                                                <td><img src="${a.getImage()}"></td>
                                                <td>${a.getStudent().getStudentcode()}</td>
                                                <td>${a.getStudent().getFullname()}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${a.getAttendence() eq 'Absent'}">
                                                            Absent <input style="margin-right: 100px" type="radio" name="${a.getStudent().getStudentCode()}" value="Absent" onchange="setAttend('${a.getStudent().getStudentCode()}');" checked/>
                                                            Attended <input type="radio" name="${a.getStudent().getStudentCode()}" value="Attended" onchange="setAttend('${a.getStudent().getStudentCode()}');" />
                                                        </c:when>
                                                        <c:when test="${a.getAttendence() eq 'Attended'}">
                                                            Absent <input style="margin-right: 100px" type="radio" name="${a.getStudent().getStudentCode()}" value="Absent" onchange="setAttend('${a.getStudent().getStudentCode()}');""/>
                                                            Attended <input type="radio" name="${a.getStudent().getStudentCode()}" value="Attended" onchange="setAttend('${a.getStudent().getStudentCode()}');" checked / >
                                                        </c:when>
                                                    </c:choose>
                                                    <input type="hidden" name="attendence" id="${a.getStudent().getStudentCode()}">
                                                </td>
                                        <input type="hidden" value="${a.getStudent().getStudentCode()}" name="student">
                                        </tr>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${requestScope.listStudent}" var="s" varStatus="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td><img src="${s.getImage()}"</td>
                                            <td>${s.getStudentCode()}</td>
                                            <td>${s.getFullName()}</td>
                                            <td>
                                                Absent <input style="margin-right: 100px" type="radio" name="${s.getStudentCode()}" value="Absent" onchange="setAttend('${s.getStudentCode()}');"/>
                                                Attended <input type="radio" name="${s.getStudentCode()}" value="Attended" onchange="setAttend('${s.getStudentCode()}');" />
                                                <input type="hidden" name="attendence" id="${s.getStudentCode()}">
                                            </td>
                                        <input type="hidden" value="${s.getStudentCode()}" name="student"> 
                                        </tr>
                                    </c:forEach>
                                </c:otherwise> 
                            </c:choose>
                            </tbody>
                        </table>
                        <input type="hidden" value="<%=request.getQueryString()%>" name="param">
                        <input style="margin-left: 95%"  type="submit" value="Save" id="submit-btn">
                    </form>
                </div>
            </div>
        </div>    
        <script>
            function setAttend(index) {
                var choice = document.querySelector("input[name=" + index + "]:checked").value;
                var valueIndex = document.getElementById(index);
                valueIndex.setAttribute("value", choice);
            }
            function allRadioFillUp() {
                document.getElementById('submit-btn').disabled = true;
                $(":radio").change(function () {
                    var names = {};
                    $(':radio').each(function () {
                        names[$(this).attr('name')] = true;
                    });
                    var count = 0;
                    $.each(names, function () {
                        count++;
                    });
                    if ($(':radio:checked').length === count) {
                        document.getElementById('submit-btn').disabled = false;
                    }
                }).change();
            }
            allRadioFillUp();
        </script>    
    </body>
</html>
