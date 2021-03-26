<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type='text/javascript' src='<%=path%>/js/echarts.min.js' charset='utf-8'></script>
    <title> 病情分析与判断页面</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" href="<%=path%>/favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="row">
    <div class="col-sm-12">
        <div style="height:670px;width:1300px;">
            <div style="height:660px;width:650px;float:left;display:inline-block">
                <div style="height:300px;width:650px;">
                    <br>
                    <br>
                    <br>
                    <h3 class="font-bold" style="text-align:center">以下是系统根据您的描述得到的病症关键字</h3>
                    <div class="error-desc">
                        <br>
                        <textarea type="text" class="form-control" style="height: 150px;width:500px;margin:0 auto" ><%=session.getAttribute("sswa1")%></textarea>
                        <br>
                    </div>
                </div>
                <div style="height:350px;width:650px;">
                    <div style="height:5px;width:650px;background:#007cc3;margin:0 auto"></div>
                    <div style="height:80px;width:650px;margin:0 auto;text-align:center;">
                        <br>
                        <br>
                        <br>
                        <h3 >认真阅读以下问题并做出选择，系统能够更加有效的分析您的病情，为你作出正确的判断。</h3>
                        <h4>点击“是”与“否”即可</h4>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div style="height:250px;width:650px;">
                        <div class="faq-item">
                            <div class="row">
<%--                                <div class="col-md-7">--%>
<%--                                    <a data-toggle="collapse" class="faq-question">是否患有<%=session.getAttribute("sswa2")%>的症状？</a>--%>
<%--                                </div>--%>
<%--                                <div class="col-md-3">--%>
<%--                                    <div class="tag-list">--%>
<%--                                        <button ><a href="<%=path%>/bingqing/xiangxi">是</a></button>--%>
<%--                                        <button ><a href="<%=path%>/bingqing/xiangxi1">否</a></button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div style="height:660px;width:5px;display:inline-block;background:#007cc3"></div>
            <div style="height:660px;width:645px;float:right;display:inline-block">
                <br>
                <br>
                <br>
                <div style="height:50px;width:650px;text-align:center">
                    <h3 >系统根据您所描述病情，最后得出结论，您很有可能患了<%=session.getAttribute("sswa3")%>这种疾病</h3>
                </div>
                <br>
                <div align="center">
                    <button style="height:40px;width:200px"><a  href="<%=path%>/common/xiangxixinxi" style="color: black;margin:0 auto;font-size:16px">点击查看疾病具体信息</a></button>
                </div>
                <br>
                <br>
                <div id="main" style="height:400px;width:650px;"></div>
                <script type="text/javascript">
                    window.onload = function () {
                        echart01();

                        function echart01(){
                            var chartDom = document.getElementById('main');
                            var myChart = echarts.init(chartDom);
                            var option;

                            option = {
                                title: {
                                    text: '全国易发疾病所占比例',

                                    left: 'center'
                                },
                                tooltip: {
                                    trigger: 'item',
                                    formatter: '{a} <br/>{b} : {c} ({d}%)'
                                },
                                legend: {
                                    left: 'center',
                                    top: 'bottom',
                                    data: ['缺血性心脏病', '中风', '慢性阻塞性肺病', '下呼吸道感染', '阿尔兹海默病及其他痴呆病', '气管癌，支气管癌和肺癌', '糖尿病', '腹泻病','结核病']
                                },
                                toolbox: {
                                    show: true,
                                    feature: {
                                        mark: {show: true},
                                        dataView: {show: true, readOnly: false},
                                        restore: {show: true},
                                        saveAsImage: {show: true}
                                    }
                                },
                                series: [
                                    {
                                        name: '面积模式',
                                        type: 'pie',
                                        radius: [20, 140],
                                        center: ['50%', '50%'],
                                        roseType: 'area',
                                        itemStyle: {
                                            borderRadius: 5
                                        },
                                        data: [
                                            {value: 30, name: '缺血性心脏病'},
                                            {value: 28, name: '中风'},
                                            {value: 26, name: '慢性阻塞性肺病'},
                                            {value: 12, name: '下呼吸道感染'},
                                            {value: 22, name: '阿尔兹海默病及其他痴呆病'},
                                            {value: 20, name: '气管癌，支气管癌和肺癌'},
                                            {value: 22, name: '糖尿病'},
                                            {value: 2, name: '结核病'},
                                            {value: 16, name: '腹泻病'}
                                        ]
                                    }
                                ]
                            };

                            option && myChart.setOption(option);

                        }
                    }
                </script>
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

        $('#loading-example-btn').click(function () {
            btn = $(this);
            simpleLoad(btn, true)

            // Ajax example
            //                $.ajax().always(function () {
            //                    simpleLoad($(this), false)
            //                });

            simpleLoad(btn, false)
        });
    });

    function simpleLoad(btn, state) {
        if (state) {
            btn.children().addClass('fa-spin');
            btn.contents().last().replaceWith(" Loading");
        } else {
            setTimeout(function () {
                btn.children().removeClass('fa-spin');
                btn.contents().last().replaceWith(" Refresh");
            }, 2000);
        }
    }
</script>

</body>

</html>
