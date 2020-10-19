package com.cinema.entity;

import java.util.List;

public class pageUtils {
    private List records;//某页的数据
    private int currentPage;//当前页
    private int totalRecordsSize;//总共的记录数
    private int pageSize;//总共多少页

    private int firstPage=1;//首页
    private int lastPage;//末页
    private int pre;//上一页
    private int next;//下一页

    //显示页码
    private int beginPage;//第一个显示的页码
    private int endPage;//最后一个显示的页码

    public List getRecords() {
        return records;
    }

    public void setRecords(List records) {
        this.records = records;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalRecordsSize() {
        return totalRecordsSize;
    }

    public void setTotalRecordsSize(int totalRecordsSize) {
        this.totalRecordsSize = totalRecordsSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getLastPage() {
        return lastPage;
    }

    public void setLastPage(int lastPage) {
        this.lastPage = lastPage;
    }

    public int getPre() {
        return pre;
    }

    public void setPre(int pre) {
        this.pre = pre;
    }

    public int getNext() {
        return next;
    }

    public void setNext(int next) {
        this.next = next;
    }

    public int getBeginPage() {
        return beginPage;
    }

    public void setBeginPage(int beginPage) {
        this.beginPage = beginPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public pageUtils(List records, int currentPage, int pageSize, int totalRecordsSize){
      this.records=records;
      this.currentPage=currentPage;
      this.totalRecordsSize=totalRecordsSize;
      this.pageSize=pageSize;

      lastPage=(totalRecordsSize+pageSize-1)/pageSize;//计算最后一页
      pre=currentPage-1<=0?1:(currentPage-1);//计算上一页
      next=currentPage+1>lastPage?lastPage:currentPage+1;//计算下一页

      //计算开始页码和结束页码
      if (lastPage<=10){
          //小于10页全显示
          beginPage=1;
          endPage=lastPage;
      }else{
          //大于10页 当前页页码-4 <<- 当前页页码 ->> 当前页页码+5
          beginPage=currentPage-4;
          endPage=currentPage+5;
          if (beginPage<1){
              //当前页往前不足4，显示前10页
              beginPage=1;
              endPage=10;
          }else if (endPage>lastPage){
              //最后一页显示的页码大于总页码，设置最后一个页码为总页码
              endPage=lastPage;
              beginPage=endPage-10+1;//第一个页码为最后一个页码-10
          }
      }

    }
}
