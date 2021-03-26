<%--<!DOCTYPE html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 时间轴</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="row">
    <div class="col-sm-12">
        <div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="text-center float-e-margins p-md">
                            <h1>常见季节性传染病</h1>
                            <!--                                <span>预览：</span>-->
                            <!--                                <a href="#" class="btn btn-xs btn-primary" id="lightVersion">浅色</a>-->
                            <!--                                <a href="#" class="btn btn-xs btn-primary" id="darkVersion">深色</a>-->
                            <!--                                <a href="#" class="btn btn-xs btn-primary" id="leftVersion">布局切换</a>-->
                        </div>
                        <div class="" id="ibox-content">

                            <div id="vertical-timeline" class="vertical-container light-timeline">
                                <div class="vertical-timeline-block">
                                    <div class="vertical-timeline-icon navy-bg">
                                        <i class="fa fa-briefcase"></i>
                                    </div>

                                    <div class="vertical-timeline-content">
                                        <h2>流行性感冒</h2>
                                        <p>流行性感冒是由流感病毒引起的一种急性呼吸道传染病，其临床特点为起病急，全身中毒症状明显，如高热、头痛、全身酸痛、软弱无力等，而呼吸道症状较轻。流行性感冒主要通过接触及飞沫传播，传染性强，轻症患者病程短，常呈自限性，重症患者需进行药物治疗，一般可治愈。
                                        </p>
                                        <!--                                            <a href="#" class="btn btn-sm btn-primary"> 更多信息</a>-->
                                        <span class="vertical-date">

                                                <h4>临床症状 :发热、头痛、全身酸痛、软弱无力</h4>
                                                <h4>好发人群 :人群普遍易感</h4>
                                                <h4>并发疾病 :肺炎、脑炎、脑膜炎、急性坏死性脑病</h4>
                                                <h4>常见检查 :血常规、血生化、动脉血气分析、病毒抗原检测、病毒核酸检测、病毒培养分离、血清学检测</h4>
                                                <h4>就诊科室 :急诊科、呼吸内科、发热门诊</h4>
                                                <h4>治疗周期 :7~14天</h4>
                                                <h4>是否医保 :是</h4>
                                                <h4>常用药物 :奥司他韦、扎那米韦、帕拉米韦 </h4><br>



                                            <!--                                        <small>2月3日</small>-->
                                    </span>
                                        <img src="<%=path%>/img/11.jpg" float="right" height="250" width="350"/>
                                    </div>
                                </div>

                                <div class="vertical-timeline-block">
                                    <div class="vertical-timeline-icon navy-bg">
                                        <i class="fa fa-briefcase"></i>
                                    </div>

                                    <div class="vertical-timeline-content">
                                        <h2>流行性脑脊髓膜炎</h2>
                                        <p>流行性脑脊髓膜炎是一种常见病，是由脑膜炎球菌引起的化脓性脑膜炎。流行性脑脊髓膜炎主要表现为发热、头痛、呕吐、皮肤瘀点、颈项强直，可导致继发性感染、脑及周围组织炎症、免疫反应综合征。本病经过及时有效治疗，一般预后尚可。
                                        </p>
                                        <span class="vertical-date">
                                                <h4>临床症状 :发热、头痛、呕吐、皮肤瘀点、颈项强直</h4>
                                                <h4>好发人群 :儿童、免疫力低下者、吸烟者</h4>
                                                <h4>并发疾病 :继发性感染、脑及周围组织炎症、免疫反应综合征</h4>
                                                <h4>常见检查 :血常规、脑脊液检查、免疫学检查                 </h4>
                                                <h4>就诊科室 :感染内科、神经内科</h4>
                                                <h4>治疗周期 :1周左右</h4>
                                                <h4>是否医保 :是</h4>
                                                <h4>常用药物 :青霉素、头孢菌素、磺胺、脱水剂 </h4><br>
                                    </span>
                                        <img src="<%=path%>/img/12.jpg" float="right" height="250" width="350"/>
                                    </div>
                                </div>


                                <div class="vertical-timeline-block">
                                    <div class="vertical-timeline-icon navy-bg">
                                        <i class="fa fa-briefcase"></i>
                                    </div>

                                    <div class="vertical-timeline-content">
                                        <h2>流行性腮腺炎</h2>
                                        <p>流行性腮腺炎是由腮腺炎病毒引起，好发于儿童及青少年中常见的急性呼吸道传染病，多数呈良性自限过程。该病主要表现为腮腺肿胀、疼痛、发热，少数患者可引起睾丸炎，但对生育的影响不大。可通过一般治疗、药物治疗以及中医治疗改善，一般预后较好。治疗期间患者应注意休息，及时补充水分等。接种麻腮风病毒疫苗可有效预防该病的发生。 </p>
                                        <!--                                            <a href="#" class="btn btn-sm btn-primary"> 更多信息</a>-->
                                        <span class="vertical-date">
                                                <h4>临床症状 :腮腺肿胀、疼痛、发热</h4>
                                                <h4>好发人群 :儿童、免疫力低下者、未接种疫苗者</h4>
                                                <h4>并发疾病 :脑膜炎、耳聋、睾丸-附睾炎、卵巢炎、胰腺炎</h4>
                                                <h4>常见检查 :血常规、血尿淀粉酶、血清学检查、病原学检测</h4>
                                                <h4>就诊科室 :感染内科、儿科、心内科、消化内科</h4>
                                                <h4>治疗周期 :8~14天</h4>
                                                <h4>是否医保 :是</h4>
                                                <h4>常用药物 :利巴韦林、地塞米松 </h4><br>
                                            <!--                                        <small>2月3日</small>-->
                                    </span>
                                        <img src="<%=path%>/img/13.jpg" float="right" height="250" width="350"/>
                                    </div>
                                </div>

                                <div class="vertical-timeline-block">
                                    <div class="vertical-timeline-icon navy-bg">
                                        <i class="fa fa-briefcase"></i>
                                    </div>

                                    <div class="vertical-timeline-content">
                                        <h2>麻疹</h2>
                                        <p>麻疹是由麻疹病毒感染引起的急性呼吸道疾病，是一种自限性疾病，但是传染性很高，通过呼吸道传播。典型的麻疹症状通常包括高热、咳嗽、口腔麻疹黏膜斑，首发症状出现3~ 5日后出现全身斑丘疹，病后大多可获得终身免疫。 </p>
                                        <!--                                            <a href="#" class="btn btn-sm btn-primary"> 更多信息</a>-->
                                        <span class="vertical-date">
                                                <h4>临床症状 :咳嗽、流鼻涕、持续性发热、麻疹黏膜斑、红色斑丘疹</h4>
                                                <h4>好发人群 :8个月以内的婴儿、7岁以上学龄儿童、没有接种麻疹疫苗的幼儿及成人</h4>
                                                <h4>并发疾病 :中耳炎、喉气管炎、麻疹脑炎</h4>
                                                <h4>常见检查 :体格检查、病毒抗原检测、血清学检查、病毒分离、血常规</h4>
                                                <h4>就诊科室 :感染科、儿科、皮肤科、呼吸内科</h4>
                                                <h4>治疗周期 :2~3周</h4>
                                                <h4>是否医保 :是</h4>
                                                <h4>常用药物 :布洛芬、萘普生、对乙酰氨基酚、维生素A、苯巴比妥</h4><br>
                                            <!--                                        <small>2月3日</small>-->
                                    </span>
                                        <img src="<%=path%>/img/14.jpg" float="right" height="250" width="350"/>
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
<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>



<!-- 自定义js -->
<script src="<%=path%>/js/content.js?v=1.0.0"></script>


<script>
    $(document).ready(function () {

        // Local script for demo purpose only
        $('#lightVersion').click(function (event) {
            event.preventDefault()
            $('#ibox-content').removeClass('ibox-content');
            $('#vertical-timeline').removeClass('dark-timeline');
            $('#vertical-timeline').addClass('light-timeline');
        });

        $('#darkVersion').click(function (event) {
            event.preventDefault()
            $('#ibox-content').addClass('ibox-content');
            $('#vertical-timeline').removeClass('light-timeline');
            $('#vertical-timeline').addClass('dark-timeline');
        });

        $('#leftVersion').click(function (event) {
            event.preventDefault()
            $('#vertical-timeline').toggleClass('center-orientation');
        });


    });
</script>



</body>

</html>
