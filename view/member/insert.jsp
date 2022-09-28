<%-- 
    Document   : insert
    Created on : Nov 3, 2021, 9:56:32 PM
    Author     : HL2020
--%>
<%@page import="model.Class"%>
<%@page import="model.PTranier"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Class> classes = (ArrayList<Class>) request.getAttribute("classes");
            ArrayList<PTranier> PTs = (ArrayList<PTranier>) request.getAttribute("PT");

        %>

    </head>
    <body style="text-align: center" >
        <form action="insert" method="POST" id="add-form">
            <h1 style="text-align: center">Thêm hội viên mới với mẫu sau:  </h1>
            ID: <input type="text" name="id" style="align-content: center" /> <br/>
            Name: <input type="text" name="name" /> <br/>
            Age: <input type="text" name="age" /> <br/>
            <div style="display:flex;align-items: center">
                Gender: 
                <input style="width:15px"  type="radio"  checked="checked" name="gender" value="male"  /> Male
                <input style="width:15px"  type="radio" name="gender" value="female"  /> Female <br/>

            </div>
            Test Date: <input type="date" name="dob"/> <br/>
            Weight: <input type="text" name="weight" /> <br/>
            SMM : <input type="text" name="smm" /> <br/>
            Body Fat: <input type="text" name="bodyfat" /> <br/>
            Department: <select name="classid">
                <% for (Class d : classes) {
                %>
                <option value="<%=d.getId()%>" ><%=d.getName()%></option>
                <%}%>
            </select>
            <br/>
            <input type="submit" value="Save" id="save-btn"/>

        </form>
        <style>
            
            h1 {
                color: red;
                font-family: verdana;
                font-size: 100%;
            }
            #add-form{
                margin:auto;
                backgound-color:blue;
                width: 50%;
                text-align: left;
            }

            #add-form input{
                width: 100%;
                height: 30px;
                border:1px solid blue;
                border-radius: 10px;
                margin-bottom:10px
            }

            #save-btn{
                width: 100px !important;
                margin: 0px 40%;
            }
        </style>

    </body>
</html>
