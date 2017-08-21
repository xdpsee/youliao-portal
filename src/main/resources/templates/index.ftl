<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用Layui</title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css">
    <link rel="stylesheet" href="//res.layui.com/css/global.css?t=1503301275923" media="all">
</head>
<body>

<!-- 你的HTML代码 -->
<div class="layui-header header header-index layui-bg-green">
    <div class="layui-main">
        <a class="logo" href="/">
            <img src="//res.layui.com/images/layui/logo.png" alt="layui">
        </a>
        <div class="layui-form component">

        </div>

        <ul class="layui-nav">
            <li class="layui-nav-item">
                <a href="">控制台<span class="layui-badge">9</span></a>
            </li>
            <li class="layui-nav-item">
                <a href="">个人中心<span class="layui-badge-dot"></span></a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img">我</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">修改信息</a></dd>
                    <dd><a href="javascript:;">安全管理</a></dd>
                    <dd><a href="javascript:;">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>

<script src="/resources/layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
                ,form = layui.form;

        layer.msg('Hello World');
    });
</script>
</body>
</html>