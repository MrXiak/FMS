document.writeln("    <div class=\'layui-side layui-bg-black\'>");
document.writeln("        <div class=\'layui-side-scroll\'>");
document.writeln("            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->");
document.writeln("            <ul class=\'layui-nav layui-nav-tree\'  lay-filter=\'test\'>");
document.writeln("                <li class=\'layui-nav-item layui-nav-itemed\'>");
document.writeln("                    <a class=\'\' href=\'javascript:;\'>用户信息</a>");
document.writeln("                    <dl class=\'layui-nav-child\'>");
document.writeln("                        <dd id='dduser'><a href=\'admin-user.html\'>用户管理</a></dd>");
document.writeln("                        <dd id='ddorder'><a href=\'admin-order.html\'>订单管理</a></dd>");
document.writeln("                        <dd id='ddadmin'><a href=\'admin-admin.html\'>管理员管理</a></dd>");
document.writeln("                    </dl>");
document.writeln("                </li>");
document.writeln("            </ul>");
document.writeln("        </div>");
document.writeln("    </div>");