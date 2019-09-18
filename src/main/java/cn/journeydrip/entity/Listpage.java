package cn.journeydrip.entity;

public class Listpage {

    //设置页码，设置总页码
    private int page;
    private int totalpage;


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getTotalpage() {
        return totalpage;
    }

    public void setTotalpage(int totalpage) {
        this.totalpage = totalpage;
    }

    public Listpage() {
    }

    public Listpage(int page, int totalpage) {
        this.page = page;
        this.totalpage = totalpage;
    }

    @Override
    public String toString() {
        return "Listpage{" +
                "page=" + page +
                ", totalpage=" + totalpage +
                '}';
    }
}
