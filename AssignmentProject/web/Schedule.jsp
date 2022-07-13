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
                                Lecture<select name="id"> 
                                    <c:forEach items="${requestScope.ins}" var="i">
                                        <option 
                                            <c:if test="${i.InstructorID eq requestScope.InstructorID}">
                                                selected="selected"
                                            </c:if>
                                            value="${i.InstructorID}">${i.IName}</option>
                                    </c:forEach>
                                </select>
                                <input type="submit" value="View"/>
                            </form>
                        </div>
                    </div>                   
                    <table class="table table-striped table-hover" style="margin: 0 auto; width: 90%">
                        <thead>
                            <tr>
                                <th rowspan="2">
                                    <span class="auto-style1"><strong>Year</strong></span>
                                    <select name="ctl00$mainContent$drpYear" onchange="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$drpYear\',\'\')', 0)" id="ctl00_mainContent_drpYear">
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option selected="selected" value="2022">2022</option>
                                        <option value="2023">2023</option>

                                    </select>
                                    <br>
                                    Week
                                    <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$drpSelectWeek\',\'\')', 0)" id="ctl00_mainContent_drpSelectWeek">

                                        <option value="1">09/05 To 15/05</option>
                                        <option value="3">16/05 To 22/05</option>
                                        <option value="3">23/05 To 29/05</option>
                                        <option value="4">30/05 To 05/06</option>
                                        <option value="5">06/06 To 12/06</option>
                                        <option selected="selected" value="6">13/06 To 19/06</option>
                                        <option value="7">20/06 To 26/06</option>
                                        <option value="8">27/06 To 03/07</option>
                                        <option value="9">04/07 To 10/07</option>
                                        <option value="10">11/07 To 17/07</option>
                                    </select>
                                </th>

                                <th align="center">Mon</th><th align="center">Tue</th><th align="center">Wed</th><th align="center">Thu</th><th align="center">Fri</th><th align="center">Sat</th><th align="center">Sun</th>
                            </tr>
                            <tr>
                                <th align="center">13/06</th><th align="center">14/06</th><th align="center">15/06</th><th align="center">16/06</th><th align="center">17/06</th><th align="center">18/06</th><th align="center">19/06</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.schedule}" var="s">
                                <tr>
                                    <td>s.slot.slotname </td>
                                    <td style="width: 21%"><a href="attendance.html">${s.subject.subjectname}</a><br> at DE-207 <br>(<font color="Green">attended</font>)<br><span class="label label-success">${s.slot.time}</span><br></td>
                                    <td style="width: 11%"><a href="attendance.html">PRJ301</a><br> at BE-213 <a><br>(<font color="Green">attended</font>)<br><span class="label label-success">(7:30-9:00)</span><br></a></td>
                                    <td style="width: 11%"></td>
                                    <td style="width: 11%"><a href="attendance.html">PRJ301</a><br> at BE-213 <a><br>(<font color="Green">attended</font>)<br><span class="label label-success">(7:30-9:00)</span><br></a></td>
                                    <td style="width: 11%"></td>
                                    <td style="width: 11%"></td>
                                    <td style="width: 11%"></td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>     
    </body>
</html>
