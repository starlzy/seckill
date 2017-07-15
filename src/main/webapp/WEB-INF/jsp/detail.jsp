<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp" %>
</head>
<div class="container">
    <div class="pannel pannel-default text-center">
        <div class="pannel-heading">
            <h1>
                ${seckill.name}
            </h1>
        </div>
    </div>
    <div class="pannel-body">
        <h2 class="text-danger">
            <%--显示time图标--%>
            <span class="glyphicon glyphicon-time"></span>
            <%--展示倒计时--%>
            <span class="glyphicon" id="seckill-box"></span>
        </h2>

    </div>
</div>
<div id="killPhoneModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"></span>
                </h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="填手机号" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <span id="killPhoneMessage" class="glyphicon"></span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

<body>

</body>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/resources/js/jquery/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/resources/js/jquery/bootstrap.min.js"></script>

<script src="https://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="https://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>

<script src="/resources/script/seckill.js" type="text/javascript"></script>
<script text="text/javascript">
    $(function () {
        //使用EL表达式传入参数
        seckill.detail.init({
            seckillId: ${seckill.seckillId},
            startTime: ${seckill.startTime.time},
            endTime: ${seckill.endTime.time}
        });
    });
</script>
</html>