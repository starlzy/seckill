<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<html lang="zh-CN">
<head>
    <title>秒杀列表页</title>

    <%@include file="common/head.jsp"%>
</head>
<body>
    <%--页面显示部分--%>
    <div class="container">
        <div class="panel panel-default">
            <div clas="panel-heading text-center">
                <h1>秒杀列表</h1>
            </div>
            <div class="pannel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>名称</th>
                            <th>库存</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>创建时间</th>
                            <th>详情页</th>
                        </tr>
                    </thead>
                 <tbody>
                  <c:forEach var="sk" items="${list}">
                      <tr>
                          <td>${sk.name}</td>
                          <td>${sk.number}</td>
                          <td>
                              <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                          </td>panel
                          <td>
                              <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                          </td>
                          <td>
                              <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                          </td>
                          <td>
                              <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">link</a>
                          </td>
                      </tr>
                  </c:forEach>
                </tbody>
                </table>
            </div>
        </div>

    </div>

</body>
<script src="/resources/js/jquery/jquery-1.11.3.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/resources/js/jquery/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>