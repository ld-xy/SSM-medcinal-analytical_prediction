<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title> 病情描述页面</title>--%>
<%--    <meta name="keywords" content="">--%>
<%--    <meta name="description" content="">--%>
<%--    <link rel="shortcut icon" href="<%=path%>/favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">--%>
<%--    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">--%>
<%--    <link href="<%=path%>/css/animate.css" rel="stylesheet">--%>
<%--    <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">--%>
<%--</head>--%>

<%--<body class="gray-bg">--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<div class="middle-box text-center animated fadeInDown">--%>

<%--    <img src="<%=path%>/img/2.jpg" style="height: 200px;width: 100%">--%>
<%--    <br>--%>
<%--    <br>--%>
<%--    <br>--%>
<%--    <h3 class="font-bold">请将你的身体状况进行详细描述！</h3>--%>

<%--    <div class="error-desc">--%>
<%--        可以通过拖拽右下角三角区域自由放缩输入框大小~--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <form class="form-inline m-t" action="<%=path%>/bingqing/miaoshu">--%>
<%--            <div class="form-group a1">--%>
<%--                <textarea type="text" class="form-control" style="height: 100px;width:400px;" name="bingqingmiaoshu" placeholder="请输入您的病情描述 …" ></textarea>--%>
<%--            </div>--%>
<%--            <br>--%>
<%--            <br>--%>
<%--            <input type="submit" class="btn btn-primary"></input>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <br>--%>
<%--    <br>--%>
<%--</div>--%>
<%--<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>--%>
<%--<script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>--%>

<%--</body>--%>
<%--</html>--%>




<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> - 病情描述</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
        <link rel="shortcut icon" href="<%=path%>/favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
        <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
        <link href="<%=path%>/css/animate.css" rel="stylesheet">
        <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight">
    <div class="row">
        <div class="col-sm-8">
            <div class="ibox">
                <div class="ibox-content">
                    <img alt="image" class="img-circle" src="<%=path%>/img/pangding.png" style="width: 150px">
                    <input name="'q" style="border:1px solid #ccc;border-radius:5px;display:inline-block;width:300px;height:40px;padding-left:10px;" type="text" placeholder="医院/医生/疾病/症状/咨询/咨询等"/>
                    <button class="search-submit" id="btnPost" style="width:100px;height:40px;line-height:40px;text-align:center;border-radius:5px;background:#007cc3;color:#fff;border:0px;" onclick="" type="submit">我要搜索</button>
                    <div class="clients-list">
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane active">

                                <div class="full-height-scroll">
                                    <div class="table-responsive">
                                        <div style="height:5px;width:750px;background:#007cc3;margin:0 auto"></div>
                                        <div style="height:300px;width:700px;margin:0 auto;">
                                            <br>
                                            <br>
                                            <h3 class="font-bold" style="text-align:center">请将你的身体状况进行详细描述！</h3>

                                            <div class="error-desc">
                                                                                                  <p style="text-align:center">可以通过拖拽右下角三角区域自由放缩输入框大小</p>
<%--                                                <br>--%>
<%--                                                <br>--%>
<%--                                                <textarea type="text" class="form-control" style="height: 100px;width:400px;margin:0 auto" placeholder="请输入您的病情描述 …" name="bingqingmiaoshu"></textarea>--%>
<%--                                                <br>--%>
<%--                                               <input type="submit" class="btn btn-primary"><a href="<%=path%>/bingqing/miaoshu">查询</a></input>--%>
                                                        <form class="form-inline m-t" action="<%=path%>/bingqing/miaoshu" style="text-align:center">
                                                            <div class="form-group a1">
                                                                <textarea type="text" class="form-control" style="height: 100px;width:400px;" name="bingqingmiaoshu" placeholder="请输入您的病情描述 …" ></textarea>
                                                            </div>
                                                            <br>
                                                            <br>
                                                            <input type="submit" class="btn btn-primary" style="text-align:center"></input>
                                                        </form>
                                            </div>
                                        </div>
                                        <div style="height:5px;width:750px;background:#007cc3;margin:0 auto"></div>
                                        <br>
                                        <h3>热门疾病</h3>
                                        <div style="height:200px;width:350px;text-align:center;font-size:16px;line-height:30px;display:inline-block ">
                                            <a  href="" target="_blank">更年期综合症</a><br>
                                            <a href="" target="_blank">冠状粥样硬化性心脏病</a><br>
                                            <a href="" target="_blank">上呼吸道感染</a><br>
                                            <a href="" target="_blank">胃溃疡</a><br>
                                            <a href="" target="_blank">系统性红斑狼疮</a><br>
                                        </div>
                                        <div style="height:200px;width:350px;text-align:center;font-size:16px;line-height:30px;display:inline-block ">
                                            <a  href="" target="_blank">老年人高血压</a><br>
                                            <a href="" target="_blank">气管和支气管疾病</a><br>
                                            <a href="" target="_blank">先天性心脏病</a><br>
                                            <a href="" target="_blank">脊髓肿瘤</a><br>
                                            <a href="" target="_blank">肝硬化门静脉高压</a><br>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="ibox ">

                <div class="ibox-content">
                    <div class="tab-content">
                        <div id="contact-1" class="tab-pane active">
                            <h3>常见病情描述</h3><br>
                            <tr>
                                <img alt="image" class="img-circle" src="<%=path%>/img/a2.jpg" style="width: 62px">
                                <td><a data-toggle="tab" href="#contact-1" class="client-link">袁岳</a></td><br>
                                <td> 病情描述（发病时间、主要症状、症状变化等）：最近，从胳膊肘到手指尖，有一种麻刺刺的感觉，就像睡觉压着胳膊麻了的那种感觉。最近查体，血压、血脂、血糖等都很正常。也没有颈椎方面的问题。</td>
                            </tr>
                            <br>
                            <br>
                            <tr>
                                <img alt="image" class="img-circle" src="<%=path%>/img/a7.jpg" style="width: 62px">
                                <td><a data-toggle="tab" href="#contact-1" class="client-link">肖林志</a></td><br>
                                <td>前几年打点滴时因为把药瓶放在炕上烙热了，把药物打上后用凉水拔了一下，并没有把药物拔下去，现在出现了全身疼的状况，我想问一下该怎么办，把热药打进去对身体有什么危害，血管会怎样</td>
                            </tr>
                            <br>
                            <br>
                            <tr>
                                <img alt="image" class="img-circle" src="<%=path%>/img/a5.jpg" style="width: 62px">
                                <td><a data-toggle="tab" href="#contact-1" class="client-link">李全福</a></td><br>
                                <td> 眼皮红肿，大药有两个月了，其间到市医院查证为食物过敏，吃过一些激素药病情有一点好转，可是停药后又出现反弹。</td>
                            </tr>
                            <br>
                            <br>
                            <tr>
                                <img alt="image" class="img-circle" src="<%=path%>/img/a4.jpg" style="width: 62px">
                                <td><a data-toggle="tab" href="#contact-1" class="client-link">张有为</a></td><br>
                                <td> 两天前感觉下巴有点歪，然后一个右眼皮有点肿，前两天受凉了，现在右边的半张脸出现了水肿的情况，这个属于急性面部神经炎吗，大概有多长时间治疗可以恢复正常 </td>
                            </tr>
                            <br>
                            <br>
                            <tr>
                                <img alt="image" class="img-circle" src="<%=path%>/img/a3.jpg" style="width: 62px">
                                <td><a data-toggle="tab" href="#contact-1" class="client-link">卿酒酒</a></td><br>
                                <td>上身右边长褐色斑点不痛不痒有八九年了密密麻麻的，右边前后都有面积大基本包括了右边全部，左边没有 </td>
                            </tr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 全局js -->
<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- 自定义js -->
<script src="<%=path%>/js/content.js?v=1.0.0"></script>
<script>
    $(function () {
        $('.full-height-scroll').slimScroll({
            height: '100%'
        });
    });
</script>
</body>

</html>

