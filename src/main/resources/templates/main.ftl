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

<div class="layui-layout layui-layout-admin">
    <#assign activeNav="living">
    <#include "common/header-logged-in.ftl">

    <div class="layui-side layui-bg-gray">
        <div class="layui-side-scroll">
            <!-- 左侧导航区 -->
            <table class="layui-table" lay-data="{height:320, url:'/demo/table/user/', page:true, id:'test'}" lay-filter="test">
                <thead>
                <tr>
                    <th lay-data="{field:'id', width:80}">设备</th>
                    <th lay-data="{field:'username', width:100}">名称</th>
                    <th lay-data="{field:'sex', width:60}">速度</th>
                    <th lay-data="{field:'classify', width:60}">状态</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="layui-body">
        <div id="container" style="min-height: 600px"></div>
    </div>

    <div class="layui-footer">
        底部固定区域
    </div>

</div>

<script src="/resources/layui/layui.all.js"></script>
<script src="http://webapi.amap.com/maps?v=1.3&key=3d633355bbd09a1690819f7dd3328d13&plugin=AMap.ToolBar"></script>
<script type="text/javascript">

    var map = new AMap.Map('container', {
        center: [121.49908,31.239779],
        zoom: 13
    });
    map.addControl(new AMap.ToolBar({liteStyle: true}));

</script>

</body>
</html>