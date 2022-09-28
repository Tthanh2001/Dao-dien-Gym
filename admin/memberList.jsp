<%-- 
    Document   : subjectList
    Created on : Feb 25, 2022, 9:59:46 PM
    Author     : Quang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    function doUpdate(id)
    {
        window.location.href = "update?id=" + id;
    }
    function doDelete(id)
    {
        var c = confirm("are you sure?");
        if (c)
        {
            window.location.href = "delete?id=" + id;
        }
    }
</script>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel">
                <header class="panel-heading">
                    <div class="panel-heading" style="display: flex;">
                        <div style="margin-right: 74%;">Danh sách hội viên </div>
                        <div>
                            <!-- thêm đường dẫn để dẫn đến add hội viên -->
                            <a href="">Thêm hội viên</a>
                        </div>
                    </div>
                </header>
                <!-- <div class="box-header"> -->
                <!-- <h3 class="box-title">Responsive Hover Table</h3> -->
                <!-- </div> -->
                <div class="panel-body table-responsive">
                    <div class="box-tools m-b-15" style="display: flex;">
                        <form action="" method="">

                        </form>
                    </div>
                    <table class="table table-hover">
                        <tr>
                            <td>Id</td>
                            <td>Name</td>
                            <td>Age</td>
                            <td>Gender</td>
                            <td>Test Date</td>
                            <td>Weight</td>
                            <td>SMM</td>
                            <td>Body Fat</td>
                            <td>Class</td>
                            <td>DETAIL</td>
                            <td>UPDATE </td>
                            <td>DELETE</td>
                        </tr>
                        <c:forEach items="${requestScope.member}" var="i">
                            <tr>
                                <td>${i.id}</td>
                                <td>${i.name}</td>
                                <td>${i.age}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${i.gender}">
                                            <img src="../img/male-icon.png" alt=""/>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="../img/female-icon.png" alt=""/>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>${i.dob}</td>
                                <td>${i.weight}</td>
                                <td>${i.smm}</td>
                                <td>${i.bodyfat}</td>
                                <td>${i.clas.name}</td>
                                <td><a href="detail?id=${i.id}">Detail</a></td>
                                <td>
                                    <input type="button"  onclick="doUpdate(${i.id});" value="Update"/>
                                </td>
                                <td>
                                    <input type="button" onclick="doDelete(${i.id});" value="Delete"/>
                                </td>
                                </td>
                            </c:forEach> 
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
</section><!-- /.content -->
