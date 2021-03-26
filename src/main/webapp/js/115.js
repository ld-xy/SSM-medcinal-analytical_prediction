var myChart = echarts.init(document.getElementById("115"));
var dat = [35.6, 35.8, 36.5, 36.4, 35.5, 35.8, 37.1, 36.7, 37, 37.3, 37.2, 37.8, 36.6, 35.9, 36.1, 37, 36.7, 35.8, 35.7, 36.9, 38.3, 38.9, 39, 38.5, 39.3, 37.9, 40, 39.9, 40.1, 39.6, 38.7, 39, 37, 37, 37, 37.1, 37.3, 36.7, 36.8, 37.1, 37,
    38, 37.7, 37.5, 37, 38, 37, 37, 37, 37, 36.9, 36.8, 37, 36.5, 37.3, 37.5, 37, 36.6, 36.7, 36.6, 35.9, 36.0, 37, 37, 36, 37, 37.8, 38, 38, 38.1, 38.3, 38.2, 38.9, 39, 39.2, 39.3, 39.2, 38.8, 36.5, 36.7, 36.8, 37, 37, 37, 36.7, 36.7, 36.7,
    39.5, 40.1, 40.3, 41, 40.7, 40.1, 39.6, 38.5, 37.9, 37, 37, 37, 37, 36.8, 38.6, 38.9, 39.3, 39.9, 40, 40, 40.1, 38.9, 39.2, 38.3, 38.1, 37, 37.7, 37.5, 37.6, 37.7, 37.8, 37, 37, 37, 37, 37, 36.6, 38.1, 38.9, 39, 39.1, 38.7, 38.6,
    37, 38.1, 37.9, 37.7, 37.8, 37.7, 38, 38, 38.9, 39.3, 39.6, 40.2, 40.8, 41, 40.9, 40.3, 39.9, 39.6, 39.4, 39, 39, 38.9, 38.7, 38.5, 38.2, 38, 38, 38, 38, 37.8, 37.9, 37.9, 37.6, 36.9, 37, 37, 37, 37.6, 37.8, 37.8, 36.7, 36.7, 36.5,
    36.5, 36, 36, 36, 35.8, 36, 35.9, 35.7, 36.6, 35.9, 36, 36.8, 37, 37, 37, 37.1, 37, 37.2, 38.5, 39.3, 38.9, 38.5, 37.9, 37, 37.4, 36.9, 36.7, 36.4,
];

function randomData() {
    now = new Date(+now + 86400000);
    value = dat[i++];
    return {
        name: now.toString(),
        value: [
            now,
            value,
        ]
    };
}

var i = 0;
var data = [];
var now = +new Date();



option = {
    title: {
        // text: '体温'
    },
    tooltip: {
        trigger: 'axis',
        formatter: function (params) {
            params = params[0];
            var date = new Date(params.name);
            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
        },
        axisPointer: {
            animation: false
        }
    },
    xAxis: {
        type: 'time',
        splitLine: {
            show: false
        }
    },
    yAxis: {
        type: 'value',
        min:35,
        max:42,
        boundaryGap: [0, '100%'],
        splitLine: {
            show: false
        }
    },
    series: [{
        name: '模拟数据',
        type: 'line',
        showSymbol: false,
        hoverAnimation: false,
        data: dat
    }]
};



setInterval(function () {



    data.push(randomData());


    myChart.setOption({
        series: [{
            data: data
        }]
    });
}, 1000);


myChart.setOption(option);
