package cn.journeydrip.entity;

/**
 * 动漫的实体类，包含动漫id，动漫名，动漫的封面url地址,动漫的描述属性和动漫的观看地址
 */
public class dongman {
    private Integer dmid;
    private String dmname;
    private String imgurl;
    private String describe;
    private String viewurl;
    private String detailurl;
    private String type;

    public Integer getDmid() {
        return dmid;
    }

    public void setDmid(Integer dmid) {
        this.dmid = dmid;
    }

    public String getDmname() {
        return dmname;
    }

    public void setDmname(String dmname) {
        this.dmname = dmname;
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

    public String getViewurl() {
        return viewurl;
    }

    public void setViewurl(String viewurl) {
        this.viewurl = viewurl;
    }

    public String getDetailurl() {
        return detailurl;
    }

    public void setDetailurl(String detailurl) {
        this.detailurl = detailurl;
    }


    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public dongman() {
    }

    public dongman(Integer dmid, String dmname, String imgurl, String describe, String viewurl, String detailurl, String type) {
        this.dmid = dmid;
        this.dmname = dmname;
        this.imgurl = imgurl;
        this.describe = describe;
        this.viewurl = viewurl;
        this.detailurl = detailurl;
        this.type = type;
    }

    @Override
    public String toString() {
        return "dongman{" +
                "dmid=" + dmid +
                ", dmname='" + dmname + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", describe='" + describe + '\'' +
                ", viewurl='" + viewurl + '\'' +
                ", detailurl='" + detailurl + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
