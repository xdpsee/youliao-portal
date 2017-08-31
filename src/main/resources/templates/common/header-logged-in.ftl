<div class="header">
    <div class="logo"></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li></li>
    <#if activeNav == "living">
        <li class="layui-nav-item layui-this"><a href="javascript:;">实时位置</a></li>
    <#else>
        <li class="layui-nav-item"><a href="/">实时位置</a></li>
    </#if>
    <#if activeNav == "history">
        <li class="layui-nav-item layui-this"><a href="javascript:;">历史轨迹</a></li>
    <#else>
        <li class="layui-nav-item"><a href="/history">历史轨迹</a></li>
    </#if>
    <#if activeNav == "manage">
        <li class="layui-nav-item layui-this"><a href="javascript:;">设备管理</a></li>
    <#else>
        <li class="layui-nav-item"><a href="/manage/device">设备管理</a></li>
    </#if>

        <li class="layui-nav-item">
            <a href="javascript:;">数据统计</a>
            <dl class="layui-nav-child">
                <dd><a href="">邮件管理</a></dd>
                <dd><a href="">消息管理</a></dd>
                <dd><a href="">授权管理</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                饮冰
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
                <dd><a href="/logout">退出</a></dd>
            </dl>
        </li>
    </ul>
</div>
