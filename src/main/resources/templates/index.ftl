<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>DEMO</title>
    <meta name="description" content="">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_24081_wqs7mbp4zl8wu3di.css">
    <link rel="stylesheet" href="/resources/layui/css/layui.css">
    <link rel="stylesheet" href="/resources/css/global.css" charset="utf-8">
</head>
<body>
<#include "common/header-not-logged-in.ftl">

<div style="width: 100%; min-height: 360px">
    <div class="layui-carousel" id="carousel">
        <div carousel-item>
            <div>条目1</div>
            <div>条目2</div>
            <div>条目3</div>
            <div>条目4</div>
            <div>条目5</div>
        </div>
    </div>
</div>

<#include "common/footer.ftl">

<script src="/resources/layui/layui.all.js"></script>
<script>
    var carousel = layui.carousel;
    carousel.render({
        elem: '#carousel'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always' //始终显示箭头
    });
</script>

</body>
</html>