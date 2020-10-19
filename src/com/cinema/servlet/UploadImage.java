package com.cinema.servlet;

import com.jspsmart.upload.*;
import java.util.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UploadImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String str = "D:\\FMS\\web\\image\\filmimage";
        // 新建一个SmartUpload对象
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
                    + str
                    + file.getFilePathName());

// 将文件另存
// file.saveAs("/upload/" + .getFileName());
// 另存到以WEB应用程序的根目录为文件根目录的目录下
// file.saveAs("/upload/" + myFile.getFileName(),
//    su.SAVE_VIRTUAL);
// 另存到操作系统的根目录为文件根目录的目录下
// file.saveAs("c://temp//" + myFile.getFileName(),
//    su.SAVE_PHYSICAL);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }



}
