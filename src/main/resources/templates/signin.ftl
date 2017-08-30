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

<div class="main layui-clear">
    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登入</li>
                <li><a href="/registry">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form method="post">
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                            <div class="layui-form-item"><label for="L_email" class="layui-form-label">邮箱</label>
                                <div class="layui-input-inline"><input type="text" id="username" name="username" required
                                                                       lay-verify="required" autocomplete="off"
                                                                       class="layui-input"></div>
                            </div>
                            <div class="layui-form-item"><label for="L_pass" class="layui-form-label">密码</label>
                                <div class="layui-input-inline"><input type="password" id="password" name="password" required
                                                                       lay-verify="required" autocomplete="off"
                                                                       class="layui-input"></div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
                                <span style="padding-left:20px;">                  <a href="/user/forget">忘记密码？</a>                </span>
                            </div>
                            <div class="layui-form-item fly-form-app"><span>或者使用社交账号登入</span> <a
                                    href="http://fly.layui.com/app/qq"
                                    onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"
                                    class="iconfont icon-qq" title="QQ登入"></a> <a href="http://fly.layui.com/app/weibo/"
                                                                                  onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})"
                                                                                  class="iconfont icon-weibo"
                                                                                  title="微博登入"></a></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "common/footer.ftl">

<script src="/resources/layui/layui.all.js"></script>
<script>
</script>

</body>
</html>