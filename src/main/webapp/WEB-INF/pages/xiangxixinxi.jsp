<%--<!DOCTYPE html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> 病历规范化图表展示</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="<%=path%>/favicon.ico"> <link href="<%=path%>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInDown">
    <div style="height:80px;width:100%;background: -webkit-gradient(linear, 0 0, 0 100%, from(skyblue), to(white));">
        <div style="height:80px;width:400px;margin:0 auto;">
            <img alt="image" class="img-circle" src="<%=path%>/img/pangding.png" style="width: 100px">
            <a style="font-size:18px;font-weight: 700;text-align: center;color:black;letter-spacing:8px;">请您查看疾病具体信息</a>
        </div>
    </div>
    <div style="height:100%;width:100%;">
        <div style="width:32%;display:inline-block;float:left;">
            <br>
            <dl>
                <a style="align-content: center;color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病名称:</a>
                <a style=" align-content: center;"><%=session.getAttribute("sswa3")%></a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病详细情况:</a>
                <a>喘息样支气管炎(asthmatoidbronchitis)又称哮喘性支气管炎，泛指一组喘息表现的婴幼儿急性支气管炎，是一种过敏性质的、常与呼吸道感染有关的疾病。
                    患者常有湿疹及其他过敏史，尤以肥胖者多发，病程较长有反复发作史。急性喘息样支气管炎的主要病理基础是支气管平滑肌痉挛、微血管渗漏、粘膜水肿、炎性
                    细胞浸润、分泌物增多滞留所致的气道可逆性阻塞。婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引
                    起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音。喘息伴呼气性呼吸困难以夜间为重，可有刺激性咳嗽。喘息可自行缓解或经治疗后缓解，发作间隙可无任何
                    症状和体征，部分可发展为支气管哮喘。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病预防:</a>
                <a>根据上节所述，对喘息样支气管炎病儿，要注意家族与患儿自身过敏史，嗜酸性粒细胞检查，血清IgE水平等进行分析。如有支气管哮喘可疑时，应及早给
                    予哮喘的防治措施。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病成因:</a>
                <a>因为多种病毒和细菌感染均可引起，较常见的有合胞病毒、副流感病毒、流感病毒、腺病毒、鼻病毒及肺炎支原体等，大多数病例可在病毒感染基础上并发
                    细菌感染。
                    婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音
                    。
                    因为婴幼儿患病毒感染者甚多，仅一小部分患儿呈喘息样支气管炎表现，提示同一病毒在不同个别中所产生的不同病理生理改变和临床表现，与机体内在因素密切
                    相关。如近年发现合胞病毒引起的喘息样支气管炎患儿出现特异性IgE抗体，其鼻咽分泌物中组织胺浓度明显高于同样感染而无喘息表现的患儿，其亲属往往有过敏
                    性鼻炎、荨麻疹、哮喘等变态反应性疾病史。约30%左右的患儿曾患湿疹，测血清SIgE含量常见增高。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病症状:</a>
                <a>'耸肩喘息', '哮鸣音', '纤毛上皮细胞损伤脱落', '变应性咳嗽', '化学性支气管炎', '喘息', '冬春季的慢性咳...', '咳嗽伴哮鸣音' </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病传染性:</a>
                <a>无传染性 </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病治疗科室:</a>
                <a>'内科', '呼吸内科'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病所需检查:</a>
                <a>肺部检查', '肺和胸膜听诊', '抗链球菌型M蛋白抗体', '抗链球菌壁多糖抗体', '酶联免疫吸附试验'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病忌吃:</a>
                <a>'海蟹', '海虾', '海螺', '猪肉(肥瘦)'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病宜吃:</a>
                <a>'紫苏粥', '菊花芦根茶', '生芦根粥', '鲜芦根粥', '薏仁党参粥', '党参粥', '黄芪粥', '鸡蛋木耳粥'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病推荐药物:</a>
                <a>'枸橼酸喷托维林片', '氨茶碱片', '二羟丙茶碱片', '胸腺肽肠溶片', '硫酸沙丁胺醇气雾剂', '小青龙合剂', '硫酸沙丁胺醇片', '蛇胆川贝
                    液', '小青龙颗粒', '布地奈德气雾剂', '喷托维林氯化铵糖浆' </a>
            </dl>



        </div>
        <div style="float:left;width:32%;display:inline-block;margin-left:30px">
            <br>
            <%--            <dl>--%>
            <%--                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病名称:</a>--%>
            <%--                <a >喘息样支气管炎</a>--%>
            <%--            </dl>--%>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病详细情况:</a>
                <a>喘息样支气管炎(asthmatoidbronchitis)又称哮喘性支气管炎，泛指一组喘息表现的婴幼儿急性支气管炎，是一种过敏性质的、常与呼吸道感染有关的疾病。
                    患者常有湿疹及其他过敏史，尤以肥胖者多发，病程较长有反复发作史。急性喘息样支气管炎的主要病理基础是支气管平滑肌痉挛、微血管渗漏、粘膜水肿、炎性
                    细胞浸润、分泌物增多滞留所致的气道可逆性阻塞。婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引
                    起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音。喘息伴呼气性呼吸困难以夜间为重，可有刺激性咳嗽。喘息可自行缓解或经治疗后缓解，发作间隙可无任何
                    症状和体征，部分可发展为支气管哮喘。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病预防:</a>
                <a>根据上节所述，对喘息样支气管炎病儿，要注意家族与患儿自身过敏史，嗜酸性粒细胞检查，血清IgE水平等进行分析。如有支气管哮喘可疑时，应及早给
                    予哮喘的防治措施。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病成因:</a>
                <a>因为多种病毒和细菌感染均可引起，较常见的有合胞病毒、副流感病毒、流感病毒、腺病毒、鼻病毒及肺炎支原体等，大多数病例可在病毒感染基础上并发
                    细菌感染。
                    婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音
                    。
                    因为婴幼儿患病毒感染者甚多，仅一小部分患儿呈喘息样支气管炎表现，提示同一病毒在不同个别中所产生的不同病理生理改变和临床表现，与机体内在因素密切
                    相关。如近年发现合胞病毒引起的喘息样支气管炎患儿出现特异性IgE抗体，其鼻咽分泌物中组织胺浓度明显高于同样感染而无喘息表现的患儿，其亲属往往有过敏
                    性鼻炎、荨麻疹、哮喘等变态反应性疾病史。约30%左右的患儿曾患湿疹，测血清SIgE含量常见增高。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病症状:</a>
                <a>'耸肩喘息', '哮鸣音', '纤毛上皮细胞损伤脱落', '变应性咳嗽', '化学性支气管炎', '喘息', '冬春季的慢性咳...', '咳嗽伴哮鸣音' </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病传染性:</a>
                <a>无传染性 </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病治疗科室:</a>
                <a>'内科', '呼吸内科'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病所需检查:</a>
                <a>肺部检查', '肺和胸膜听诊', '抗链球菌型M蛋白抗体', '抗链球菌壁多糖抗体', '酶联免疫吸附试验'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病忌吃:</a>
                <a>'海蟹', '海虾', '海螺', '猪肉(肥瘦)'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病宜吃:</a>
                <a>'紫苏粥', '菊花芦根茶', '生芦根粥', '鲜芦根粥', '薏仁党参粥', '党参粥', '黄芪粥', '鸡蛋木耳粥'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病推荐药物:</a>
                <a>'枸橼酸喷托维林片', '氨茶碱片', '二羟丙茶碱片', '胸腺肽肠溶片', '硫酸沙丁胺醇气雾剂', '小青龙合剂', '硫酸沙丁胺醇片', '蛇胆川贝
                    液', '小青龙颗粒', '布地奈德气雾剂', '喷托维林氯化铵糖浆' </a>
            </dl>
        </div>
        <div style="width:32%;display:inline-block;float:right">
            <br>
            <%--            <dl>--%>
            <%--                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病名称:</a>--%>
            <%--                <a >喘息样支气管炎</a>--%>
            <%--            </dl>--%>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病详细情况:</a>
                <a>喘息样支气管炎(asthmatoidbronchitis)又称哮喘性支气管炎，泛指一组喘息表现的婴幼儿急性支气管炎，是一种过敏性质的、常与呼吸道感染有关的疾病。
                    患者常有湿疹及其他过敏史，尤以肥胖者多发，病程较长有反复发作史。急性喘息样支气管炎的主要病理基础是支气管平滑肌痉挛、微血管渗漏、粘膜水肿、炎性
                    细胞浸润、分泌物增多滞留所致的气道可逆性阻塞。婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引
                    起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音。喘息伴呼气性呼吸困难以夜间为重，可有刺激性咳嗽。喘息可自行缓解或经治疗后缓解，发作间隙可无任何
                    症状和体征，部分可发展为支气管哮喘。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病预防:</a>
                <a>根据上节所述，对喘息样支气管炎病儿，要注意家族与患儿自身过敏史，嗜酸性粒细胞检查，血清IgE水平等进行分析。如有支气管哮喘可疑时，应及早给
                    予哮喘的防治措施。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病成因:</a>
                <a>因为多种病毒和细菌感染均可引起，较常见的有合胞病毒、副流感病毒、流感病毒、腺病毒、鼻病毒及肺炎支原体等，大多数病例可在病毒感染基础上并发
                    细菌感染。
                    婴幼儿的气管和支气管都比较狭小，其周围弹力纤维发育完善，故其粘膜易受感染或其他刺激而肿胀充血，引起管道狭窄，分泌物粘稠不易咳出，从而产生喘鸣音
                    。
                    因为婴幼儿患病毒感染者甚多，仅一小部分患儿呈喘息样支气管炎表现，提示同一病毒在不同个别中所产生的不同病理生理改变和临床表现，与机体内在因素密切
                    相关。如近年发现合胞病毒引起的喘息样支气管炎患儿出现特异性IgE抗体，其鼻咽分泌物中组织胺浓度明显高于同样感染而无喘息表现的患儿，其亲属往往有过敏
                    性鼻炎、荨麻疹、哮喘等变态反应性疾病史。约30%左右的患儿曾患湿疹，测血清SIgE含量常见增高。</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病症状:</a>
                <a>'耸肩喘息', '哮鸣音', '纤毛上皮细胞损伤脱落', '变应性咳嗽', '化学性支气管炎', '喘息', '冬春季的慢性咳...', '咳嗽伴哮鸣音' </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病传染性:</a>
                <a>无传染性 </a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病治疗科室:</a>
                <a>'内科', '呼吸内科'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病所需检查:</a>
                <a>肺部检查', '肺和胸膜听诊', '抗链球菌型M蛋白抗体', '抗链球菌壁多糖抗体', '酶联免疫吸附试验'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病忌吃:</a>
                <a>'海蟹', '海虾', '海螺', '猪肉(肥瘦)'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病宜吃:</a>
                <a>'紫苏粥', '菊花芦根茶', '生芦根粥', '鲜芦根粥', '薏仁党参粥', '党参粥', '黄芪粥', '鸡蛋木耳粥'</a>
            </dl>
            <dl>
                <a style="color:lightslategrey;font-size:16px;font-weight:600;font-family: Arial,"宋体"">疾病推荐药物:</a>
                <a>'枸橼酸喷托维林片', '氨茶碱片', '二羟丙茶碱片', '胸腺肽肠溶片', '硫酸沙丁胺醇气雾剂', '小青龙合剂', '硫酸沙丁胺醇片', '蛇胆川贝
                    液', '小青龙颗粒', '布地奈德气雾剂', '喷托维林氯化铵糖浆' </a>
            </dl>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">


            </div>
        </div>

    </div>

</div>

<!-- 全局js -->
<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/js/bootstrap.min.js?v=3.3.6"></script>



<!-- Peity -->
<script src="<%=path%>/js/plugins/peity/jquery.peity.min.js"></script>

<!-- 自定义js -->
<script src="<%=path%>/js/content.js?v=1.0.0"></script>


<!-- Peity demo data -->
<script src="<%=path%>/js/demo/peity-demo.js"></script>




</body>

</html>
