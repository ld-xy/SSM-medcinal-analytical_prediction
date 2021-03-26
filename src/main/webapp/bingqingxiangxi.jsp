<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%--<!DOCTYPE html>--%>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> 病情分析与判断页面</title>
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
        <div class="wrapper wrapper-content animated fadeInUp">

            <div class="ibox-content m-b-sm border-bottom">
                <div class="text-center ">
                    <h3 >认真阅读以下问题并做出选择，系统能够更加有效的分析您的病情，为你作出正确的判断。</h3>
                    <br>
                    <h4>点击“是”与“否”即可</h4>
                </div>
            </div>
            <!--                <div class="ibox-content m-b-sm border-bottom">-->
            <!--                    <div class="text-center p-lg">-->
            <!--                        <h2>如果没有找到您需要的问题</h2>-->
            <!--                        <span>您可以点击</span>-->
            <!--                        <button title="Create new cluster" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> <span class="bold">在线提问</span>-->
            <!--                        </button>按钮-->
            <!--                    </div>-->
            <!--                </div>-->

            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq1" class="faq-question">是否患有“腹痛”的症状？</a>
                        <!--                            <small><strong>天猫</strong> <i class="fa fa-clock-o"></i> 今天15:34</small>-->
                    </div>
                    <div class="col-md-3">
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                            <!--                                <span class="tag-item">理财</span>-->
                        </div>
                    </div>
                    <!--                        <div class="col-md-2 text-right">-->
                    <!--                            <span class="small font-bold">投票 </span>-->
                    <!--                            <br/>42-->
                    <!--                        </div>-->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq1" class="panel-collapse collapse faq-answer">
                            <p>
                                腹痛的原因极为复杂，其中以腹部疾病和胸腔系统疾病为多见，但也可涉及妇科疾病、全身性疾病及其他原因等多个方面。
                                <br>1、疾病因素 ：腹部疾病（急性腹膜炎，腹腔脏器炎症，空腔脏器痉挛或者梗阻，脏器扭转或破裂等）；胸腔疾病（肺炎、心绞痛、急性心肌梗死、急性心包炎、肺梗死、胸膜炎等）
                                <br>2、非疾病因素 ：腹部外伤、医疗操作、饮食刺激、受凉等非疾病因素，同样可能会引起腹痛。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq2" class="faq-question">是否有“腹泻”的症状</a>
                        <!--                            <small><strong>天猫</strong> <i class="fa fa-clock-o"></i> 今天15:34</small>-->
                    </div>
                    <div class="col-md-3">
                        <!--                            <span class="small font-bold">天猫</span>-->
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>
                    <!--                        <div class="col-md-2 text-right">-->
                    <!--                            <span class="small font-bold">投票 </span>-->
                    <!--                            <br/>24-->
                    <!--                        </div>-->
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq2" class="panel-collapse collapse faq-answer">
                            <p>
                                腹泻多由疾病因素导致，且以肠道疾病为多见，其他常见的有急性食物中毒、全身性感染等，细菌感染为常见原因之一。
                                <br>1、疾病因素 1.肠道感染：多由病毒(轮状病毒、柯萨奇病毒等)、细菌(大肠杆菌、霍乱弧菌、痢疾杆菌等)、寄生虫(阿米巴原虫、梨形鞭毛虫等)引起。由于肠道感染所引起的腹泻，通常急性发作。
                                2.全身性疾病：常见于败血症、甲状腺功能亢进、糖尿病、系统性红斑狼疮等。例如甲状腺功能亢进的患者，由于肠蠕动加快，可出现腹泻症状。
                                3.肠道非感染性疾病：例如炎症性肠病、缺血性结肠炎、溃疡性结肠炎等
                                <br>2、非疾病因素
                                1.食物中毒，常见的有由误食河豚、毒蕈而引起的腹泻。
                                2.着凉也可引起腹泻。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq3" class="faq-question">是否有“高烧不退”的症状？</a>
                        <!--                            <small><strong>天猫</strong> <i class="fa fa-clock-o"></i> 今天15:34</small>-->
                    </div>
                    <div class="col-md-3">
                        <!--                            <span class="small font-bold">天猫</span>-->
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq3" class="panel-collapse collapse faq-answer">
                            <p>
                                主要的疾病有：1、人体被病原体侵袭。常见的病原体有病毒，细菌，支原体，衣原体，立克次体等。这些病原体进入人体后，会引发炎症，而出现高热不退的症状。如果上呼吸道感染出现了并发症，比如支气管炎，肺炎，肺脓肿，脓胸等，也会出现高烧不退的情况。
                                <br>2、结缔组织疾病，如果有风湿热、系统性红斑狼苍等疾病，都会出现高烧不退的情况。
                                <br>3、内分泌性疾病，比如甲状腺功能亢进、糖尿病患者控制不良合并感染都会导致高烧不退。
                                <br>4、肿瘤，比如急性白血病也会导致高烧不退。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq4" class="faq-question">十四天内是否去过新冠疫情高发地区？</a>

                    </div>
                    <div class="col-md-3">

                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq4" class="panel-collapse collapse faq-answer">
                            <p>
                                如去过新冠疫情高发地区，请立刻上报，并转移到专业治疗地方。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq5" class="faq-question">是否有心脏病史？</a>

                    </div>
                    <div class="col-md-3">
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>

                </div>
                <!--                    <div class="row">-->
                <!--                        <div class="col-sm-12">-->
                <!--                            <div id="faq5" class="panel-collapse collapse faq-answer">-->
                <!--                                <p>-->
                <!--                                    很抱歉，天猫宝暂不支持话费充值。-->
                <!--                                </p>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                    </div>-->
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq6" class="faq-question">是否有家族遗传病史？</a>

                    </div>
                    <div class="col-md-3">
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>

                </div>
                <!--                    <div class="row">-->
                <!--                        <div class="col-sm-12">-->
                <!--                            <div id="faq6" class="panel-collapse collapse faq-answer">-->
                <!--                                <p>-->
                <!--                                    天猫宝支持淘宝旅行商品，但仅限天猫店铺。-->
                <!--                                </p>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                    </div>-->
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq7" class="faq-question">是否曾出现过心跳过快，心慌等症状？</a>

                    </div>
                    <div class="col-md-3">
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq7" class="panel-collapse collapse faq-answer">
                            <p>
                                成人每分钟心率超过100次称 心动过速 。
                                <br>心动过速分生理性病理性两种。跑步、饮酒、重体力劳动及情绪激动时心律加快为生理性心动过速；若 高热 、 贫血 、 甲亢 、出血、疼痛、缺氧、心衰和 心肌病 等疾病引起心动过速，称病理性心动过速。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="faq-item">
                <div class="row">
                    <div class="col-md-7">
                        <a data-toggle="collapse" href="<%=path%>/bingqingxiangxi.jsp#faq8" class="faq-question">身边人是否与你有过相同的症状？</a>

                    </div>
                    <div class="col-md-3">
                        <div class="tag-list">
                            <button>是</button>
                            <button>否</button>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="faq8" class="panel-collapse collapse faq-answer">
                            <p>
                                如果有，很有可能是传染病，请立刻咨询医生进行治疗。
                            </p>
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
