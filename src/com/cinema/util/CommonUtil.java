package com.cinema.util;

public class CommonUtil {
    public static  boolean isEmpty(String str){
        //trim()的作用：去掉字符串首尾的空格。
        if(str==null){
            return true;
        }else return str.trim().length() == 0;
    }
}
