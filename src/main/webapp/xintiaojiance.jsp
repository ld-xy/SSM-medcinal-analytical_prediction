<%--<!DOCTYPE html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html lang="en">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> - 心跳检测</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
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
                        <h2>心跳监测动态图</h2>
                        <div class="clients-list">
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="full-height-scroll">
                                        <div  id="116" style="height:600px;width: 100%"></div>
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
                                <div class="row m-b-lg">
                                    <h3>心跳</h3>
                                    <p>心跳（heartbeat ），顾名思义就是心脏的跳动。右心房收纳全身的静脉血，通过右心室从肺动脉泵出，此时肺动脉中流的是静脉血，通过肺中的气体交换，变成含氧丰富的动脉血，由肺静脉送至左心房，再通过左心室的主动脉泵向全身各个组织器官以满足其正常生理活动的需要。</p>
                                </div>
                            </div>
                            <div class="client-detail">
                                <div class="full-height-scroll">

                                    <strong>一天内心跳测试点</strong>

                                    <ul class="list-group clear-list">
                                        <li class="list-group-item fist-item">
                                            <span class="pull-right"> 100</span> 07:00
                                        </li>
                                        <li class="list-group-item">
                                            <span class="pull-right"> 123 </span> 11:00
                                        </li>
                                        <li class="list-group-item">
                                            <span class="pull-right">112 </span> 18:00
                                        </li>
                                        <li class="list-group-item">
                                            <span class="pull-right"> 100</span> 22:00
                                        </li>
                                    </ul>
                                    <strong>特别提醒</strong>
                                    <p>
                                        心动过速分生理性、药物性、病理性三种。跑步、饮酒、重体力劳动及情绪激动时心律加快为生理性心动过速；高热、贫血、甲亢、出血、疼痛、缺氧、心衰和心肌病等疾病引起心动过速，称病理性心动过速。“心动过速”不是病名，而是一个症状。病理性心动过速又可分为窦性心动过速和阵发性室上性心动过速两种。窦性心动过速的特点是心率加快和转慢都是逐渐进行。窦性心动过速的病因多为功能性的，也可见于器质性心脏病和心外因素。其产生主要与交感神经兴奋和迷走神经张力降低有关。
                                    </p>
                                    <hr/>
                                    <strong>注意事项</strong>
                                    <div class="vertical-timeline-block">
                                        <div class="vertical-timeline-icon lazur-bg">
                                            <i class="fa fa-user-md"></i>
                                        </div>
                                        <div class="vertical-timeline-content">
                                            <h2>心跳采样规则</h2>
                                            <p>心跳每隔一天，进行四次体温测量，然后取出平均值。当心跳超过异常值时，我们就应该注意需要及时就医</p>
                                            <span class="vertical-date">前天 <br><small>2月1日</small></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="<%=path%>/js/echarts.min.js"></script>
    <script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="<%=path%>/js/116.js"></script>
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
