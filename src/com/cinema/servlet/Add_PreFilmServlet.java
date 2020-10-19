package com.cinema.servlet;

import com.cinema.entity.preFilm;
import com.cinema.service.IFilmService;
import com.cinema.service.impl.IFilmServiceImpl;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Add_PreFilmServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req,resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //_________________________________图片上传____________________________________________

        String str = "D:\\FMS\\web\\image\\filmimage";
/*        // 新建一个SmartUpload对象
        SmartUpload su = new SmartUpload();
        // 上传初始化
        su.initialize(getServletConfig(),req,resp);
// 设定上传限制
// 1.限制每个上传文件的最大长度。
// su.setMaxFileSize(10000);
// 2.限制总上传数据的长度。
// su.setTotalMaxFileSize(20000);
// 3.设定允许上传的文件（通过扩展名限制）,仅允许doc,txt文件。
// su.setAllowedFilesList("doc,txt");
// 4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。
        // su.setDeniedFilesList("exe,bat,jsp,htm,html,,");
// 上传文件
        try {
            su.upload();
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        // 将上传文件全部保存到指定目录
        int count = 0;
        try {
            count = su.save(str);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        System.out.println(count+"个文件上传成功！<br>");

// 利用Request对象获取参数之值
        System.out.println("TEST="+su.getRequest().getParameter("TEST")
                +"<BR><BR>");

// 逐一提取上传文件信息，同时可保存文件。
        for (int i=0;i<su.getFiles().getCount();i++) {
            com.jspsmart.upload.File file = su.getFiles().getFile(i);

// 若文件不存在则继续
            if (file.isMissing()) continue;

            str = str+ "\\" +file.getFilePathName();

// 显示当前文件信息
            System.out.println("表单项名（FieldName）"
                    + file.getFieldName() );
            System.out.println("文件长度（Size）"
                    + file.getSize());
            System.out.println("文件名（FileName）"
                    + file.getFileName());
            System.out.println("文件扩展名（FileExt）"
                    + file.getFileExt());
            System.out.println("文件全名（FilePathName）"
                    + str);

// 将文件另存
// file.saveAs("/upload/" + .getFileName());
// 另存到以WEB应用程序的根目录为文件根目录的目录下
// file.saveAs("/upload/" + myFile.getFileName(),
//    su.SAVE_VIRTUAL);
// 另存到操作系统的根目录为文件根目录的目录下
// file.saveAs("c://temp//" + myFile.getFileName(),
//    su.SAVE_PHYSICAL);
//
        }*/




        //获取页面的值
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String img=str;
        String pid=req.getParameter("input_pre_filmid");
        String p_name = req.getParameter("p_name");

        //复选框
        String love=req.getParameter("like[love]");
        String comedy=req.getParameter("like[comedy]");
        String animation=req.getParameter("like[animation]");
        String story=req.getParameter("like[story]");
        String panic=req.getParameter("like[panic]");
        String science=req.getParameter("like[science]");
        String suspense=req.getParameter("like[suspense]");
        String crime=req.getParameter("like[crime]");
        String adventure=req.getParameter("like[adventure]");
        String war=req.getParameter("like[war]");
        String family=req.getParameter("like[family]");
        String swordsman=req.getParameter("like[swordsman]");
        if (love == null) {
            love = " ";
        }
        if (comedy == null) {
            comedy = " ";
        }
        if (animation == null) {
            animation = " ";
        }
        if (story == null) {
            story = " ";
        }
        if (panic == null) {
            panic = " ";
        }
        if (science == null) {
            science = " ";
        }
        if (suspense == null) {
            suspense = " ";
        }
        if (crime == null) {
            crime = " ";
        }
        if (adventure == null) {
            adventure = " ";
        }
        if (war == null) {
            war = " ";
        }
        if (family == null) {
            family = " ";
        }
        if (swordsman == null) {
            swordsman = " ";
        }

        String p_time=req.getParameter("p_time");
        String p_actor=req.getParameter("p_actor");
        String p_date=req.getParameter("p_date");

        String twod=req.getParameter("like[2D]");
        String threed=req.getParameter("like[3D]");
        String twodmax=req.getParameter("like[2D MAX]");
        String threedmax=req.getParameter("like[3D MAX]");

        if (twod == null) {
            twod = " ";
        }
        if (threed == null) {
            threed = " ";
        }
        if (twodmax == null) {
            twodmax = " ";
        }
        if (threedmax == null) {
            threedmax = " ";
        }
        String p_info=req.getParameter("desc");

        preFilm preFilm=new preFilm();
        preFilm.setPre_film_img(img);
        preFilm.setPre_film_id(pid);
        preFilm.setPre_film_name(p_name);
        preFilm.setPre_film_type(love+comedy+animation+story+panic+science+suspense+crime+adventure+war+family+swordsman);
        preFilm.setPre_film_time(p_time);
        preFilm.setPre_film_actor(p_actor);
        preFilm.setPre_film_date(p_date);
        preFilm.setPre_film_version(twod+threed+twodmax+threedmax);
        preFilm.setPre_film_info(p_info);

        //调用Service层
        IFilmService iFilmService=new IFilmServiceImpl();
        if (iFilmService.isInsert(preFilm)){
            req.getRequestDispatcher("/admin-jsp/admin-beonshow.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("/admin-jsp/admin-beonshow.jsp").forward(req,resp);
        }
    }
}
