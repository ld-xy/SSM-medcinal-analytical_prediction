<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type='text/javascript' src='<%=path%>/js/echarts.min.js' charset='utf-8'></script>
    <!--360浏览器优先以webkit内核解析-->


    <title> - 主页示例</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content" style="height:100%;width:100%;background: -webkit-gradient(linear, 0 0, 0 100%, from(skyblue), to(white));">
    <div style="height:1000px;width:80%;background:white;margin:0 auto">
        <div style="height:80px;width:100%;background:cadetblue;text-align: center">
            <img alt="image" class="img-circle" src="<%=path%>/img/pangding.png" style="width: 100px">
            <a style=" font-family: ‘Times New Roman’, Times, serif;font-size:20px;font-weight: 800;text-align: center;color:black;">欢迎来到“胖丁”医生疾病传染病检测预防系统</a>
        </div>
        <div style="height:300px;width:100%;">
            <div style="height:100%;width:35%;float:left;display:inline-block;background:red">
                <img alt="image" src="<%=path%>/img/beijing.jpg" style=" height:100%;width:auto; background-size: cover;">
            </div>
            <div style="height:100%;width:55%;float:right;display:inline-block;font-size: 16px; font-family: ‘Times New Roman’, Times, serif;font-weight: 700;">
                <br>
                <p>.系统通过对病人的“病情描述”进行分析，得出病情主要关键字。</p>
                <p>.根据病情关键字以选择方式对病人进行提问，从而更加详细的了解病人患病情况</p>
                <p>.最后根据以上信息，得出病人所患具体疾病</p>
                <p>.以图表的形式为病人列出体温，心跳变化情况，从而更加直观观测病人体征。</p>
                <p>.调取一段时间内当地患这种病的人的地理分布，从而判断此病是否是聚集性传染病。</p>
                <p>.对于聚集性传染病，根据全国患病人数，死亡率，治愈率，预测出疾病最大规模爆发时间及患病人数</p>
            </div>
        </div>
        <div style="height:5px;width:100%;background:skyblue"></div>
        <div  id="chart" style="height:700px;width:100%;margin:0 auto">  </div>
        <script type="text/javascript">
            // 初始化图表标签
            var myChart = echarts.init(document.getElementById('chart'));
            var categories = [];
            categories[0] = {name: '疾病名称' };
            categories[1] = {name: '伴随症' };
            categories[2] = {name: '检查科室' };
            categories[3] = {name: '常用药' };
            categories[4] = {name: '宜吃' };
            categories[5] = {name: '忌吃' };
            categories[6] = {name: '推荐食疗' };
            option = {
                // 图的标题
                title: {
                    text: '古代中医人物图 '
                },
                // 提示框的配置
                tooltip: {
                    formatter: function (x) {
                        return x.data.des;
                    }
                },
                // 工具箱
                toolbox: {
                    // 显示工具箱
                    show: true,
                    feature: {
                        mark: {
                            show: true
                        },
                        // 还原
                        restore: {
                            show: true
                        },
                        // 保存为图片
                        saveAsImage: {
                            show: true
                        }
                    }
                },
                legend: [{
                    // selectedMode: 'single',
                    data: categories.map(function (a) {
                        return a.name;
                    })
                }],
                series: [{
                    type: 'graph', // 类型:关系图
                    layout: 'force', //图的布局，类型为力导图
                    symbolSize: 40, // 调整节点的大小
                    roam: true, // 是否开启鼠标缩放和平移漫游。默认不开启。如果只想要开启缩放或者平移,可以设置成 'scale' 或者 'move'。设置成 true 为都开启
                    edgeSymbol: ['none', 'arrow'],
                    edgeSymbolSize: [2, 10],
                    edgeLabel: {
                        normal: {
                            textStyle: {
                                fontSize: 20
                            }
                        }
                    },
                    force: {
                        repulsion: 2500,//子节点之间的距离
                        edgeLength: [10, 50]//连线的长度
                    },
                    draggable: true,
                    lineStyle: {
                        normal: {
                            width: 2,
                            color: '#4b565b',
                        }
                    },
                    edgeLabel: {
                        normal: {
                            show: true,
                            formatter: function (x) {
                                return x.data.name;
                            }
                        }
                    },
                    label: {
                        normal: {
                            show: true,
                            textStyle: {}
                        }
                    },

                    // 数据
                    data: [{name: '古代中医', des: '', symbolSize: 120, category: 0, },
                        {name: '上古时期',des: '', symbolSize: 90, category: 1, },
                        {name: '春秋时期', des: '',symbolSize: 90, category: 1, },
                        {name: '战国时期', des: '',symbolSize: 90, category: 1, },
                        {name: '汉代', des: '',symbolSize: 90, category: 1, },
                        {name: '三国', des: '',symbolSize: 90, category: 1, },
                        {name: '晋', des: '',symbolSize: 90, category: 1, },
                        {name: '南北朝', des: '',symbolSize: 90, category: 1, },
                        {name: '隋朝', des: '',symbolSize: 90, category: 1, },
                        {name: '唐代', des: '',symbolSize: 90, category: 1, },
                        {name: '宋朝', des: '',symbolSize: 90, category: 1, },
                        {name: '金', des: '',symbolSize: 90, category: 1, },
                        {name: '元', des: '',symbolSize: 90, category: 1, },
                        {name: '明', des: '',symbolSize: 90, category: 1, },
                        {name: '黄帝' , des: '',symbolSize: 80, category: 2, },
                        {name: '神农', des: '',symbolSize: 80, category: 2, },
                        {name: '歧伯', des: '',symbolSize: 80, category: 2, },
                        {name: '医和', des: '',symbolSize: 80, category: 2, },
                        {name: '扁鹊', des: '',symbolSize: 80, category: 2, },
                        {name: '淳于意', des: '',symbolSize: 80, category: 2, },
                        {name: '张仲景', des: '',symbolSize: 80, category: 2, },
                        {name: '华佗', des: '',symbolSize: 80, category: 2, },
                        {name: '王叔和', des: '',symbolSize: 80, category: 2, },
                        {name: '皇甫谧', des: '',symbolSize: 80, category: 2, },
                        {name: '葛洪', des: '',symbolSize: 80, category: 2, },
                        {name: '雷斅', des: '',symbolSize: 80, category: 2, },
                        {name: '陶弘景', des: '',symbolSize: 80, category: 2, },
                        {name: '徐之才', des: '',symbolSize: 80, category: 2, },
                        {name: '巢元方', des: '',symbolSize: 80, category: 2, },
                        {name: '杨上善', des: '',symbolSize: 80, category: 2, },
                        {name: '孙思邈', des: '',symbolSize: 80, category: 2, },
                        {name: '王焘', des: '',symbolSize: 80, category: 2, },
                        {name: '陈藏器', des: '',symbolSize: 80, category: 2, },
                        {name: '鉴真', des: '',symbolSize: 80, category: 2, },
                        {name: '王冰', des: '',symbolSize: 80, category: 2, },
                        {name: '庞安时', des: '',symbolSize: 80, category: 2, },
                        {name: '钱乙', des: '',symbolSize: 80, category: 2, },
                        {name: '唐慎微', des: '',symbolSize: 80, category: 2, },
                        {name: '寇宗奭', des: '',symbolSize: 80, category: 2, },
                        {name: '成无已', des: '',symbolSize: 80, category: 2, },
                        {name: '许叔微', des: '',symbolSize: 80, category: 2, },
                        {name: '刘昉', des: '',symbolSize: 80, category: 2, },
                        {name: '陈言', des: '',symbolSize: 80, category: 2, },
                        {name: '张元素', des: '',symbolSize: 80, category: 2, },
                        {name: '宋慈', des: '',symbolSize: 80, category: 2, },
                        {name: '陈自明', des: '',symbolSize: 80, category: 2, },
                        {name: '李迅', des: '',symbolSize: 80, category: 2, },
                        {name: '刘克素', des: '',symbolSize: 80, category: 2, },
                        {name: '张子和', des: '',symbolSize: 80, category: 2, },
                        {name: '李杲', des: '',symbolSize: 80, category: 2, },
                        {name: '杨士瀛', des: '',symbolSize: 80, category: 2, },
                        {name: '罗天益', des: '',symbolSize: 80, category: 2, },
                        {name: '齐德之', des: '',symbolSize: 80, category: 2, },
                        {name: '危亦林', des: '',symbolSize: 80, category: 2, },
                        {name: '朱震亨', des: '',symbolSize: 80, category: 2, },
                        {name: '忽思慧', des: '',symbolSize: 80, category: 2, },
                        {name: '王好古', des: '',symbolSize: 80, category: 2, },
                        {name: '倪维德', des: '',symbolSize: 80, category: 2, },
                        {name: '滑寿', des: '',symbolSize: 80, category: 2, },
                        {name: '汪机', des: '',symbolSize: 80, category: 2, },
                        {name: '薛己', des: '',symbolSize: 80, category: 2, },
                        {name: '万全', des: '',symbolSize: 80, category: 2, },
                        {name: '高武', des: '',symbolSize: 80, category: 2, },
                        {name: '徐春甫', des: '',symbolSize: 80, category: 2, },
                        {name: '李时珍', des: '',symbolSize: 80, category: 2, },
                        {name: '杨继洲', des: '',symbolSize: 80, category: 2, },
                        {name: '孙一奎', des: '',symbolSize: 80, category: 2, },
                        {name: '方有执', des: '',symbolSize: 80, category: 2, },
                        {name: '龚廷贤', des: '',symbolSize: 80, category: 2, },
                        {name: '王肯堂', des: '',symbolSize: 80, category: 2, },
                        {name: '吴昆', des: '',symbolSize: 80, category: 2, },
                        {name: '《诊籍》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒杂病论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《枕中灸刺经》',des: '',symbolSize: 70, category: 3, },
                        {name: '《脉经》',des: '',symbolSize: 70, category: 3, },
                        {name: '《针灸甲乙经》',des: '',symbolSize: 70, category: 3, },
                        {name: '《肘后备急方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《雷公炮炙论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《神农本草经集注》',des: '',symbolSize: 70, category: 3, },
                        {name: '《药对》',des: '',symbolSize: 70, category: 3, },
                        {name: '《诸病源候论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《黄帝内经太素》',des: '',symbolSize: 70, category: 3, },
                        {name: '《备急千金要方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《千金翼方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《外台秘要方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《本草拾遗》',des: '',symbolSize: 70, category: 3, },
                        {name: '《鉴上人秘方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《黄帝内经素问》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒总病论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《小儿药证直诀》',des: '',symbolSize: 70, category: 3, },
                        {name: '《经史政类备急本草》'	,des: '',symbolSize: 70, category: 3, },
                        {name: '《本草衍义》',des: '',symbolSize: 70, category: 3, },
                        {name: '《注解伤寒论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒明理论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒发微论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《幼幼新书》',des: '',symbolSize: 70, category: 3, },
                        {name: '《三因极一病证方论》'	,des: '',symbolSize: 70, category: 3, },
                        {name: '《脏腑标本药式》',des: '',symbolSize: 70, category: 3, },
                        {name: '《医学启源》',des: '',symbolSize: 70, category: 3, },
                        {name: '《洗冤录》',des: '',symbolSize: 70, category: 3, },
                        {name: '《外科精要》',des: '',symbolSize: 70, category: 3, },
                        {name: '《妇人大全良方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《集验背疽方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《素问玄机原病式》',des: '',symbolSize: 70, category: 3, },
                        {name: '《宣明论方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《儒门事亲》',des: '',symbolSize: 70, category: 3, },
                        {name: '《脾胃论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《兰室秘藏》',des: '',symbolSize: 70, category: 3, },
                        {name: '《内外伤辨惑论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《仁斋直指方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒类书活人总括》',des: '',symbolSize: 70, category: 3, },
                        {name: '《卫生宝鉴》',des: '',symbolSize: 70, category: 3, },
                        {name: '《外科精义》',des: '',symbolSize: 70, category: 3, },
                        {name: '《世医得效方》',des: '',symbolSize: 70, category: 3, },
                        {name: '《格致余论》',des: '',symbolSize: 70, category: 3, },
                        {name: '《局方发挥》',des: '',symbolSize: 70, category: 3, },
                        {name: '《饮膳正要》',des: '',symbolSize: 70, category: 3, },
                        {name: '《医垒元戎》',des: '',symbolSize: 70, category: 3, },
                        {name: '《汤液本草》',des: '',symbolSize: 70, category: 3, },
                        {name: '《原机启微》',des: '',symbolSize: 70, category: 3, },
                        {name: '《十四经发挥》',des: '',symbolSize: 70, category: 3, },
                        {name: '《石山医案》',des: '',symbolSize: 70, category: 3, },
                        {name: '《本草会编》',des: '',symbolSize: 70, category: 3, },
                        {name: '《外科枢要》',des: '',symbolSize: 70, category: 3, },
                        {name: '《内科摘要》',des: '',symbolSize: 70, category: 3, },
                        {name: '《万密斋医学全书》',des: '',symbolSize: 70, category: 3, },
                        {name: '《针灸聚英》',des: '',symbolSize: 70, category: 3, },
                        {name: '《针灸节要》',des: '',symbolSize: 70, category: 3, },
                        {name: '《古今医统大全》',des: '',symbolSize: 70, category: 3, },
                        {name: '《本草纲目》',des: '',symbolSize: 70, category: 3, },
                        {name: '《奇经八脉考》',des: '',symbolSize: 70, category: 3, },
                        {name: '《针灸大成》',des: '',symbolSize: 70, category: 3, },
                        {name: '《赤水玄珠》',des: '',symbolSize: 70, category: 3, },
                        {name: '《伤寒论条辨》',des: '',symbolSize: 70, category: 3, },
                        {name: '《万病回春》',des: '',symbolSize: 70, category: 3, },
                        {name: '《寿世保元》',des: '',symbolSize: 70, category: 3, },
                        {name: '《证治准绳》',des: '',symbolSize: 70, category: 3, },
                        {name: '《医方考》',des: '',symbolSize: 70, category: 3, }

                    ],
                    links: [{source: '古代中医', target: '上古时期',name: '年代'},
                        {source: '古代中医', target: '春秋时期',name: '年代'},
                        {source: '古代中医', target: '战国时期',name: '年代'},
                        {source: '古代中医', target: '汉代',name: '年代'},
                        {source: '古代中医', target: '三国',name: '年代'},
                        {source: '古代中医', target: '晋',name: '年代'},
                        {source: '古代中医', target: '南北朝',name: '年代'},
                        {source: '古代中医', target: '隋朝',name: '年代'},
                        {source: '古代中医', target: '唐代',name: '年代'},
                        {source: '古代中医', target: '宋朝',name: '年代'},
                        {source: '古代中医', target: '金',name: '年代'},
                        {source: '古代中医', target: '元',name: '年代'},
                        {source: '古代中医', target: '明',name: '年代'},
                        {source: '上古时期', target: '黄帝',name: '人物'},
                        {source: '上古时期', target: '歧伯',name: '人物'},
                        {source: '上古时期', target: '神农',name: '人物'},
                        {source: '春秋时期', target: '医和',name: '人物'},
                        {source: '战国时期', target: '扁鹊',name: '人物'},
                        {source: '汉代', target: '淳于意',name: '人物'},
                        {source: '汉代', target: '张仲景',name: '人物'},
                        {source: '三国', target: '华佗',name: '人物'},
                        {source: '晋', target: '王叔和',name: '人物'},
                        {source: '晋', target: '皇甫谧',name: '人物'},
                        {source: '晋', target: '葛洪',name: '人物'},
                        {source: '南北朝', target: '雷斅',name: '人物'},
                        {source: '南北朝', target: '陶弘景',name: '人物'},
                        {source: '南北朝', target: '徐之才',name: '人物'},
                        {source: '隋朝', target: '巢元方',name: '人物'},
                        {source: '隋朝', target: '杨上善',name: '人物'},
                        {source: '唐代', target: '孙思邈',name: '人物'},
                        {source: '唐代', target: '王焘',name: '人物'},
                        {source: '唐代', target: '陈藏器',name: '人物'},
                        {source: '唐代', target: '鉴真',name: '人物'},
                        {source: '唐代', target: '王冰',name: '人物'},
                        {source: '宋朝', target: '庞安时',name: '人物'},
                        {source: '宋朝', target: '钱乙',name: '人物'},
                        {source: '宋朝', target: '唐慎微',name: '人物'},
                        {source: '宋朝', target: '杨士瀛',name: '人物'},
                        {source: '宋朝', target: '寇宗奭',name: '人物'},
                        {source: '宋朝', target: '成无已',name: '人物'},
                        {source: '宋朝', target: '许叔微',name: '人物'},
                        {source: '宋朝', target: '刘昉',name: '人物'},
                        {source: '宋朝', target: '陈言',name: '人物'},
                        {source: '宋朝', target: '宋慈',name: '人物'},
                        {source: '宋朝', target: '陈自明',name: '人物'},
                        {source: '宋朝', target: '李迅',name: '人物'},
                        {source: '金', target: '张元素',name: '人物'},
                        {source: '金', target: '刘克素',name: '人物'},
                        {source: '金', target: '张子和',name: '人物'},
                        {source: '金', target: '李杲',name: '人物'},
                        {source: '元', target: '罗天益',name: '人物'},
                        {source: '元', target: '齐德之',name: '人物'},
                        {source: '元', target: '朱震亨',name: '人物'},
                        {source: '元', target: '忽思慧',name: '人物'},
                        {source: '元', target: '王好古',name: '人物'},
                        {source: '元', target: '倪维德',name: '人物'},
                        {source: '元', target: '滑寿',name: '人物'},
                        {source: '元', target: '危亦林',name: '人物'},
                        {source: '明', target: '汪机',name: '人物'},
                        {source: '明', target: '薛己',name: '人物'},
                        {source: '明', target: '万全',name: '人物'},
                        {source: '明', target: '高武',name: '人物'},
                        {source: '明', target: '徐春甫',name: '人物'},
                        {source: '明', target: '李时珍',name: '人物'},
                        {source: '明', target: '杨继洲',name: '人物'},
                        {source: '明', target: '孙一奎',name: '人物'},
                        {source: '明', target: '方有执',name: '人物'},
                        {source: '明', target: '龚廷贤',name: '人物'},
                        {source: '明', target: '王肯堂',name: '人物'},
                        {source: '明', target: '吴昆',name: '人物'},
                        {source: '吴昆', target: '《医方考》',name: '医书文献'},
                        {source: '王肯堂', target: '《证治准绳》',name: '医书文献'},
                        {source: '龚廷贤', target: '《寿世保元》',name: '医书文献'},
                        {source: '龚廷贤', target: '《伤寒论条辨》',name: '医书文献'},
                        {source: '方有执', target: '《赤水玄珠》',name: '医书文献'},
                        {source: '孙一奎', target: '《针灸大成》',name: '医书文献'},
                        {source: '杨继洲', target: '《奇经八脉考》',name: '医书文献'},
                        {source: '李时珍', target: '《本草纲目》',name: '医书文献'},
                        {source: '李时珍', target: '《古今医统大全》',name: '医书文献'},
                        {source: '徐春甫', target: '《针灸节要》',name: '医书文献'},
                        {source: '高武', target: '《针灸聚英》',name: '医书文献'},
                        {source: '高武', target: '《万密斋医学全书》',name: '医书文献'},
                        {source: '万全', target: '《内科摘要》',name: '医书文献'},
                        {source: '薛己', target: '《外科枢要》',name: '医书文献'},
                        {source: '薛己', target: '《本草会编》',name: '医书文献'},
                        {source: '汪机', target: '《石山医案》',name: '医书文献'},
                        {source: '滑寿', target: '《十四经发挥》',name: '医书文献'},
                        {source: '倪维德', target: '《原机启微》',name: '医书文献'},
                        {source: '王好古', target: '《汤液本草》',name: '医书文献'},
                        {source: '王好古', target: '《医垒元戎》',name: '医书文献'},
                        {source: '忽思慧', target: '《饮膳正要》',name: '医书文献'},
                        {source: '朱震亨', target: '《局方发挥》',name: '医书文献'},
                        {source: '朱震亨', target: '《格致余论》',name: '医书文献'},
                        {source: '危亦林', target: '《世医得效方》',name: '医书文献'},
                        {source: '齐德之', target: '《外科精义》',name: '医书文献'},
                        {source: '罗天益', target: '《卫生宝鉴》',name: '医书文献'},
                        {source: '杨士瀛', target: '《伤寒类书活人总括》',name: '医书文献'},
                        {source: '杨士瀛', target: '《仁斋直指方》',name: '医书文献'},
                        {source: '李杲', target: '《内外伤辨惑论》',name: '医书文献'},
                        {source: '李杲', target: '《兰室秘藏》',name: '医书文献'},
                        {source: '李杲', target: '《脾胃论》',name: '医书文献'},
                        {source: '张子和', target: '《儒门事亲》',name: '医书文献'},
                        {source: '刘克素', target: '《宣明论方》',name: '医书文献'},
                        {source: '刘克素', target: '《素问玄机原病式》',name: '医书文献'},
                        {source: '李迅', target: '《集验背疽方》',name: '医书文献'},
                        {source: '陈自明', target: '《妇人大全良方》',name: '医书文献'},
                        {source: '陈自明', target: '《外科精要》',name: '医书文献'},
                        {source: '宋慈', target: '《洗冤录》',name: '医书文献'},
                        {source: '张元素', target: '《医学启源》',name: '医书文献'},
                        {source: '张元素', target: '《脏腑标本药式》',name: '医书文献'},
                        {source: '陈言', target: '《三因极一病证方论》',name: '医书文献'},
                        {source: '刘昉', target: '《幼幼新书》',name: '医书文献'},
                        {source: '许叔微', target: '《伤寒发微论》',name: '医书文献'},
                        {source: '成无已', target: '《伤寒明理论》',name: '医书文献'},
                        {source: '成无已', target: '《《注解伤寒论》',name: '医书文献'},
                        {source: '寇宗奭', target: '《本草衍义》',name: '医书文献'},
                        {source: '唐慎微', target: '《经史政类备急本草》',name: '医书文献'},
                        {source: '钱乙', target: '《小儿药证直诀》',name: '医书文献'},
                        {source: '庞安时', target: '《伤寒总病论》',name: '医书文献'},
                        {source: '王冰', target: '《黄帝内经素问》',name: '医书文献'},
                        {source: '鉴真', target: '《鉴上人秘方》',name: '医书文献'},
                        {source: '陈藏器', target: '《本草拾遗》',name: '医书文献'},
                        {source: '王焘', target: '《外台秘要方》',name: '医书文献'},
                        {source: '孙思邈', target: '《千金翼方》',name: '医书文献'},
                        {source: '孙思邈', target: '《备急千金要方》',name: '医书文献'},
                        {source: '杨上善', target: '《黄帝内经太素》',name: '医书文献'},
                        {source: '巢元方', target: '《诸病源候论》',name: '医书文献'},
                        {source: '徐之才', target: '《药对》',name: '医书文献'},
                        {source: '陶弘景', target: '《神农本草经集注》',name: '医书文献'},
                        {source: '雷斅', target: '《雷公炮炙论》',name: '医书文献'},
                        {source: '葛洪', target: '《肘后备急方》',name: '医书文献'},
                        {source: '皇甫谧', target: '《针灸甲乙经》',name: '医书文献'},
                        {source: '王叔和', target: '《脉经》',name: '医书文献'},
                        {source: '华佗', target: '《枕中灸刺经》',name: '医书文献'},
                        {source: '张仲景', target: '《伤寒杂病论》',name: '医书文献'},
                        {source: '淳于意', target: '《诊籍》',name: '医书文献'},



                    ],
                    categories: categories,
                }]
            };

            myChart.setOption(option);
        </script>


    </div>

</div>

</div>
<!-- 全局js -->
<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path%>/js/plugins/layer/layer.min.js"></script>
<!-- Flot -->
<script src="<%=path%>/js/plugins/flot/jquery.flot.js"></script>
<script src="<%=path%>/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<%=path%>/js/plugins/flot/jquery.flot.resize.js"></script>
<script src="<%=path%>/js/plugins/flot/jquery.flot.pie.js"></script>
<!-- 自定义js -->
<script src="<%=path%>/js/content.js"></script>
<!--flotdemo-->

</body>

</html>
