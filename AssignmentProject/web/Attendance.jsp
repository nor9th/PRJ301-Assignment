<%-- 
    Document   : Attendance
    Created on : Jul 13, 2022, 9:57:40 PM
    Author     : lyxin
--%>

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
                    <form action="" method="POST">
                        <table class="table table-striped table-hover table-bordered" style="margin: 0 auto; width: 90%">
                            <thead style="text-align: center">
                                <tr>
                                    <th style="width: 5%">NO</th>
                                    <th style="width: 25%">IMAGE</th>
                                    <th style="width: 20%">STUDENT CODE</th>						
                                    <th style="width: 25%">FULLNAME</th>
                                    <th style="width: 30%">ATTENDANCE</th>
                                </tr>
                                <tr>
                                    <th style="width: 5%">1</th>
                                    <th style="width: 25%"><img src="https://i.ibb.co/jgPgH9t/Male.jpg" alt="Male" height="100px" border="0"/></th>
                                    <th style="width: 15%">HE151043</th>						
                                    <th style="width: 25%">Nguyễn Xuân Lý</th>
                                    <th style="width: 30%">
                                        <input type="radio" checked="checked" name="attendance" value="attended" /> Attended 
                                        <input type="radio" name="attendance" value="absent" /> Absent
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 5%">2</th>
                                    <th style="width: 25%"><img src="https://i.ibb.co/jgPgH9t/Male.jpg" alt="Male" height="100px" border="0"/></th>
                                    <th style="width: 15%">HE151047</th>						
                                    <th style="width: 25%">Nguyễn Xuân T</th>
                                    <th style="width: 30%">
                                        <input type="radio" checked="checked" name="attendance" value="attended" /> Attended 
                                        <input type="radio" name="attendance" value="absent" /> Absent
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 5%">3</th>
                                    <th style="width: 25%"><img src="https://i.ibb.co/jgPgH9t/Male.jpg" alt="Male" height="100px" border="0"/></th>
                                    <th style="width: 15%">HE151000</th>						
                                    <th style="width: 25%">Nguyễn Văn A</th>
                                    <th style="width: 30%">
                                        <input type="radio" checked="checked" name="attendance" value="attended" /> Attended 
                                        <input type="radio" name="attendance" value="absent" /> Absent
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 5%">4</th>
                                    <th style="width: 25%"><img src="https://i.ibb.co/94rff4Z/Famale.jpg" height="100px" alt="Famale" border="0" /></th>
                                    <th style="width: 15%">HE151001</th>						
                                    <th style="width: 25%">Nguyễn Thị B</th>
                                    <th style="width: 30%">
                                        <input type="radio" checked="checked" name="attendance" value="attended" /> Attended 
                                        <input type="radio" name="attendance" value="absent" /> Absent
                                    </th>
                                </tr>
                                <tr>
                                    <th style="width: 5%">5</th>
                                    <th style="width: 25%"><img src="https://i.ibb.co/jgPgH9t/Male.jpg" alt="Male" height="100px" border="0"/></th>
                                    <th style="width: 15%">HE151002</th>						
                                    <th style="width: 25%">Nguyễn Xuân D</th>
                                    <th style="width: 30%">
                                        <input type="radio" checked="checked" name="attendance" value="attended" /> Attended 
                                        <input type="radio" name="attendance" value="absent" /> Absent
                                    </th>
                                </tr>
                            </thead>
                        </table>
                        <input style="margin-left: 91.3%"  type="submit" value="Save" id="submit-btn">
                    </form>
                </div>
            </div>
        </div>    
    </body>
</html>