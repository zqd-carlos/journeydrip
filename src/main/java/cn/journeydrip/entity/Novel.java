package cn.journeydrip.entity;

public class Novel {

    /**
     * 小说的id。小说的名字，小说的封面地址，小说的描述，小说的细节，小说的类型
     */
    private Integer novelid;
    private String novelname;
    private String imgurl;
    private String describe;
    private String detail;
    private String type;

    /**
     * 小说的无参的构造方法
     */
    public Novel() {
    }

    /**
     * 小说的满参数的构造方法
     * @param novelid   小说的id
     * @param novelname 小说的名字
     * @param imgurl    小说的封面地址
     * @param describe  小说的描述
     * @param detail    小说的具体细节
     * @param type      小说的类型
     */
    public Novel(Integer novelid, String novelname, String imgurl, String describe, String detail, String type) {
        this.novelid = novelid;
        this.novelname = novelname;
        this.imgurl = imgurl;
        this.describe = describe;
        this.detail = detail;
        this.type = type;
    }

    public Integer getNovelid() {
        return novelid;
    }

    public void setNovelid(Integer novelid) {
        this.novelid = novelid;
    }

    public String getNovelname() {
        return novelname;
    }

    public void setNovelname(String novelname) {
        this.novelname = novelname;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    /**
     * 重写tostring方法
     */
    @Override
    public String toString() {
        return "Novel{" +
                "novelid=" + novelid +
                ", novelname='" + novelname + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", describe='" + describe + '\'' +
                ", detail='" + detail + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
