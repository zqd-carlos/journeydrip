package cn.journeydrip.entity;

public class Game {

    /**
     * 游戏的id，游戏的名字，游戏的封面内容，游戏的描述，具体的细节地址，游戏的类型
     */
    private Integer gameid;
    private String gamename;
    private String imgurl;
    private String describe;
    private String detailurl;
    private String type;

    /**
     * 无参的构造方法
     */
    public Game() {
    }

    /**
     * 全参数的构造方法
     * @param gameid    游戏的id
     * @param gamename  游戏的名字
     * @param imgurl    游戏的封面内容
     * @param describe  游戏的描述
     * @param detailurl 游戏的具体细节的url地址
     * @param type      游戏的类型
     */
    public Game(Integer gameid, String gamename, String imgurl, String describe, String detailurl, String type) {
        this.gameid = gameid;
        this.gamename = gamename;
        this.imgurl = imgurl;
        this.describe = describe;
        this.detailurl = detailurl;
        this.type = type;
    }

    public Integer getGameid() {
        return gameid;
    }

    public void setGameid(Integer gameid) {
        this.gameid = gameid;
    }

    public String getGamename() {
        return gamename;
    }

    public void setGamename(String gamename) {
        this.gamename = gamename;
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

    /**
     * 重写游戏的tostring的方法
     * @return
     */
    @Override
    public String toString() {
        return "Game{" +
                "gameid=" + gameid +
                ", gamename='" + gamename + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", describe='" + describe + '\'' +
                ", detailurl='" + detailurl + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
