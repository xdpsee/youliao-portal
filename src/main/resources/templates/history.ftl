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
<#assign activeNav="history">
<#include "common/header-logged-in.ftl">

    <div class="layui-side layui-bg-gray">
        <div class="layui-side-scroll">
            <form class="layui-form" action="" style="margin: 10px 10px 10px 10px">
                <div class="layui-form-item">
                    <div style="min-height: 36px">
                        <select name="interest">
                            <option value="0" selected="">选择设备</option>
                            <option value="1">设备-1</option>
                            <option value="2">我的手机</option>
                            <option value="3">雷克萨斯LS350</option>
                            <option value="4">狗狗</option>
                        </select>
                    </div>
                </div>
            </form>
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">日计</li>
                    <li>周计</li>
                    <li>自定义</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">
                        <form class="layui-form layui-form-pane" action="">
                            <div class="layui-form-item" pane="">
                                <div class="layui-inline">
                                    <label class="layui-form-label">起始日期</label>
                                    <div class="layui-input-block">
                                        <input name="date" id="day-start" placeholder="年-月-日" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item" pane="">
                                <div class="layui-inline">
                                    <label class="layui-form-label">结束日期</label>
                                    <div class="layui-input-block">
                                        <input name="date" id="day-end" placeholder="年-月-日" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item" pane="">
                                <label class="layui-form-label">忽略未定位</label>
                                <div class="layui-input-block">
                                    <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-submit="">查询历史轨迹</button>
                            </div>
                        </form>
                    </div>
                    <div class="layui-tab-item">

                    </div>
                    <div class="layui-tab-item">
                        <form class="layui-form layui-form-pane" action="">
                            <div class="layui-form-item" pane="">
                                <div class="layui-inline">
                                    <label class="layui-form-label">起始时间</label>
                                    <div class="layui-input-block">
                                        <input name="dateStart" id="date-start" placeholder="年-月-日 时:秒:分" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item" pane="">
                                <div class="layui-inline">
                                    <label class="layui-form-label">结束时间</label>
                                    <div class="layui-input-block">
                                        <input name="dateEnd" id="date-end" placeholder="年-月-日 时:秒:分" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item" pane="">
                                <label class="layui-form-label">忽略未定位</label>
                                <div class="layui-input-block">
                                    <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-submit="">查询历史轨迹</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 左侧导航区 -->

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

    layui.laydate.render({
        elem: '#day-start'
    });
    layui.laydate.render({
        elem: '#day-end'
    });

    layui.laydate.render({
        elem: '#date-start'
        ,type: 'datetime'
    });
    layui.laydate.render({
        elem: '#date-end'
        ,type: 'datetime'
    });

</script>

</body>
</html>