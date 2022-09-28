<%-- 
    Document   : detail
    Created on : Nov 2, 2021, 10:41:55 PM
    Author     : HL2020
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="model.PTranier"%>
<%@page import="model.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin chi tiết</title>

    </head>
    <body>
        <div id="detail-table"  >
            <table border="3" style=" background: wheat ">
                <tbody>
                    <tr>
                        <td style="color: red">Thông tin chi tiết hội viên  <br/><br/></td>
                    </tr>
                    <tr>
                        <td>ID:  ${requestScope.member.id}  <br/><br/></td>
                    </tr>
                    <tr>
                        <td>Name:    ${requestScope["member"]["name"]}  <br/><br/></td>
                    </tr>
                    <tr>
                        <td>Age:   ${requestScope.member.age}<br/><br/></td>
                    </tr>
                    <tr>
                        <td>Gender:  ${requestScope.member.gender?"Male":"Female" }   <br/><br/></td>
                    </tr>
                    <tr>
                        <td>Weight  : ${requestScope.member.weight} <br/></td>
                    </tr>
                    <tr>
                        <td>SMM (Skeletal Muscle Mass): ${requestScope.member.smm} <br/></td>
                    </tr>
                    <tr>
                        <td> Body Fat: ${requestScope.member.bodyfat}  <br/></td>
                    </tr>
                    <tr>
                        <td> Class: ${requestScope.member.clas.name} <br/></td>
                    </tr>
                    <tr>
                        <td> Personal Trannier: <br/></td>
                    </tr>

                </tbody>

            </table>
        </div>
        <style>

            #detail-table{
                border: 1px black;
                margin: 0px auto;
                width: 30%;
                height: 30%;

            }
        </style>


    </body>




</html>
