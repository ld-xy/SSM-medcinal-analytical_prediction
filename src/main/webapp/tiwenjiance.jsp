<%--<!DOCTYPE html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html lang="en">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> - 体温检测</title>
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
                        <h2>体温监测动态图</h2>
                        <div class="clients-list">
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="full-height-scroll">
                                        <div  id="115" style="height:600px;width: 100%"></div>
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
                                        <h3>体温</h3>
                                        <p>体温的正常变换对于我们每一个人都是至关重要的
                                            人体内部的温度称体温。保持恒定的体温，是保证
                                            新陈代谢和生命活动正常进行的必要条件。体温是物质代谢转化为热能的产物。
                                            正常人的体温是相对恒定的，它通过大脑和丘脑下部的体温调节中枢，调节和神经体液的作用，
                                            使产热和散热保持动态平衡。在正常生理状态下，体温升高时，机体通过减少产热和增加散热来维持体温相对恒定；
                                            反之，当体温下降时，则产热增加而散热减少，使体温维持在正常水平。
                                            正常体温不是一个具体的温度点，而是一个温度范围。机体深部的体温较为恒定和均匀，称深部体温；而体表的温度受多种因素影响，变化和差异较大，称表层温度。临床上所指的体温是指平均深部温度。一般以口腔、直肠和腋窝的体温为代表，其中直肠体温最接近深部体温。正常值：口腔舌下温度为36.3～37.2℃，直肠温度36.5～37.7℃比口腔温度高（0.2～0.5℃），腋下温度36.0℃-37.0℃。正常体温的标准是根据多数人的数值，并非为个体的绝对数值。
                                        </p>
                                    </div>
                                </div>
                                <div class="client-detail">
                                    <div class="full-height-scroll">

                                        <strong>一天体温测试点</strong>

                                        <ul class="list-group clear-list">
                                            <li class="list-group-item fist-item">
                                                <span class="pull-right"> 36度</span> 07:00
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> 36.6度 </span> 11:00
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> 36.2度 </span> 18:00
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right"> 36.0度</span> 22:00
                                            </li>
                                        </ul>
                                        <strong>特别提醒</strong>
                                        <p>
                                            人体正常体温平均在36～37℃之间（腋窝），超出37.3℃就是发热，37.3～38℃是低烧，38.1～40℃是高烧。40℃ 以上随时有生命危险。
                                        </p>
                                        <hr/>
                                        <strong>注意事项</strong>
                                            <div class="vertical-timeline-block">
                                                <div class="vertical-timeline-icon lazur-bg">
                                                    <i class="fa fa-user-md"></i>
                                                </div>
                                                <div class="vertical-timeline-content">
                                                    <h2>体温采样规则</h2>
                                                    <p>体温每隔一天，进行一次体温测量。当体温超过37度时，我们就应该注意需要及时就医</p>
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
    <script src="<%=path%>/js/115.js"></script>
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
