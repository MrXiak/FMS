document.writeln("<div class=\'layui-layout layui-layout-admin\'>");
document.writeln("<div class=\'layui-header\'>");
document.writeln("    <div class=\'layui-logo\'>");
document.writeln("        <div class=\'logo_pic\'><i class=\'icon_head\'></i></div>");
document.writeln("        <div class=\'logo_word\'>熊熊电影</div>");
document.writeln("    </div>");
document.writeln("    <!-- 头部区域（可配合layui已有的水平导航） -->");
document.writeln("    <ul class=\'layui-nav layui-layout-left\'>");
document.writeln("        <li class=\'layui-nav-item\' id='lifilm'><a href=\'index/index.jsp\'>首页</a></li>");
document.writeln("        <li class=\'layui-nav-item\' id='liuser'><a href=\'index/index.jsp\'>影片</a></li>");
document.writeln("        <li class=\'layui-nav-item\'>");
document.writeln("            <a href=\'javascript:;\'>地区选择</a>");
document.writeln("            <dl class=\'layui-nav-child\'>");
document.writeln("                <dd><a href=\'\'>江苏</a></dd>");
document.writeln("                <dd><a href=\'\'>上海</a></dd>");
document.writeln("                <dd><a href=\'\'>北京</a></dd>");
document.writeln("            </dl>");
document.writeln("        </li>");
document.writeln("    </ul>");
document.writeln("    <ul class=\'layui-nav layui-layout-right\'>");
document.writeln("        <li class=\'layui-nav-item\'>");
document.writeln("            <a href=\'javascript:;\'>");
document.writeln("                <img src=\'http://t.cn/RCzsdCq\' class=\'layui-nav-img\'>");
document.writeln("                贤心");
document.writeln("            </a>");
document.writeln("            <dl class=\'layui-nav-child\'>");
document.writeln("                <dd><a href=\'\'>登录</a></dd>");
document.writeln("                <dd><a href=\'\'>基本信息</a></dd>");
document.writeln("                <dd><a href=\'\'>退出登录</a></dd>");
document.writeln("            </dl>");
document.writeln("        </li>");
document.writeln("    </ul>");
document.writeln("</div>");
document.writeln("</div>");
document.writeln("    <script>");
document.writeln("        layui.use(\'element\', function(){");
document.writeln("            var element = layui.element;");
document.writeln("        });");
document.writeln("    </script>");