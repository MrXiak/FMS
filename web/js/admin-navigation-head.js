document.writeln("<div class=\'layui-header\'>");
document.writeln("    <div class=\'layui-logo\'>");
document.writeln("        <div class=\'logo_pic\'><i class=\'icon_head\'></i></div>");
document.writeln("        <div class=\'logo_word\'>熊熊电影-管理员</div>");
document.writeln("    </div>");
document.writeln("    <!-- 头部区域（可配合layui已有的水平导航） -->");
document.writeln("    <ul class=\'layui-nav layui-layout-left\'>");
document.writeln("        <li class=\'layui-nav-item\' id='lifilm'><a href=\'admin-film.html\'>影片信息</a></li>");
document.writeln("        <li class=\'layui-nav-item\' id='liuser'><a href=\'admin-user.html\'>用户信息</a></li>");
document.writeln("        <li class=\'layui-nav-item\'>");
document.writeln("            <a href=\'javascript:;\'>其它</a>");
document.writeln("            <dl class=\'layui-nav-child\'>");
document.writeln("                <dd><a href=\'\'>邮件管理</a></dd>");
document.writeln("                <dd><a href=\'\'>消息管理</a></dd>");
document.writeln("                <dd><a href=\'admin-index.html\'>返回</a></dd>");
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
document.writeln("                <dd><a href=\'\'>基本资料</a></dd>");
document.writeln("                <dd><a href=\'\'>安全设置</a></dd>");
document.writeln("            </dl>");
document.writeln("        </li>");
document.writeln("        <li class=\'layui-nav-item\'><a href=\'\'>退了</a></li>");
document.writeln("    </ul>");
document.writeln("</div>");
document.writeln("    <script>");
document.writeln("        layui.use(\'element\', function(){");
document.writeln("            var element = layui.element;");
document.writeln("        });");
document.writeln("    </script>");