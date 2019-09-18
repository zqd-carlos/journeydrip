package cn.journeydrip.entity;
import java.io.Serializable;

/**
 * 用户的实体类，用来存放用户的数据
 * 里面有用户id，user的用户名，密码，地址，电话，身份，网名
 * 还有用户的一个有参构造方法和方便打印的tostring方法
 */
public class User implements Serializable  {

    /**
     *添加序列化作唯一标识，易于序列化和反序列化
     */
    private static final long serialVersionUID = 5560806009120572067L;

    private Integer id;
    private String username;
    private String password;
    private String address;
    private String phone;
    private String identity;
    private String vname;


    public User() {
    }


    public User(Integer id, String username, String password, String address, String phone, String identity, String vname) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.identity = identity;
        this.vname = vname;
    }

    public Integer getId() {
        return id;
    }


    public void setId(Integer id) {
        this.id = id;
    }


    public String getUsername() {
        return username;
    }


    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }


    public String getAddress() {
        return address;
    }


    public void setAddress(String address) {
        this.address = address;
    }


    public String getPhone() {
        return phone;
    }


    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", identity='" + identity + '\'' +
                ", vname='" + vname + '\'' +
                '}';
    }
}
