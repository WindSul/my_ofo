<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户列表</title>
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
    <style>
        #myScrollspy {
            width: 300px;
            height: 200px;
            border: 1px solid #00F
        }
    </style>
    <script>

    </script>
</head>
<body>
<%@include file="/WEB-INF/jsp/common/nav.jsp" %>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>修改资料页面</h2>
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-xs-1" id="myScrollspy">图片
                </div>
                <div class="col-xs-8">
                    <form class="form-horizontal col-md-offset-1" role="form">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名字</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="name" name="name"
                                       value="${userVO.name}"
                                >
                                <label class="col-sm-10 control-label" id="updatep" name="updatep">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别</label>
                            <div class="col-sm-4">
                                <select id="sex" name="sex" class="form-control selectpicker"
                                        data-live-search="true">
                                    <option value="1"
                                            <c:if test="${userVO.sex}">selected="selected"</c:if>>男
                                    </option>
                                    <option value="2"
                                            <c:if test="${userVO.sex}">selected="selected"</c:if>>女
                                    </option>
                                </select>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">爱好</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="hobby" name="hobby"
                                       value="${userVO.hobby}"
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">创建日期</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control"
                                       value="${userVO.createTime}" readonly="readonly"
                                >
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-default col-sm-offset-1"
                                    onclick="userhandler.updatzBtn();">修改
                            </button>
                            <button type="button" class="btn btn-default"
                                    onclick="userhandler.updatezBtn();">返回
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.js"></script>
<script src="<%=path%>/resource/script/userhandler.js" type="text/javascript"></script>
</html>