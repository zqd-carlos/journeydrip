# journeydrip
journeydrip

## 介绍
本项目为简单的java-web项目，是一个J2Ee项目快速开发脚手架，集成了比较常用的一些框架，比如SSM和shiro框架。
会慢慢完善优化。尽量会做到每日一更，

#### 组成
##### 主要框架

#### 组成
##### 主要框架
* **Spring框架**: Spring框架是由于软件开发的复杂性而创建的。Spring使用的是基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅仅限于服务器端的开发。从简单性、可测试性和松耦合性角度而言，绝大部分Java应用都可以从Spring中受益。
* **Springmvc**: 与Spring无缝集成，简单灵活，支持Restful风格。
* **Mybatis** :MyBatis 是一款优秀的持久层框架，它支持定制化 SQL、存储过程以及高级映射。MyBatis 避免了几乎所有的 JDBC 代码和手动设置参数以及获取结果集。MyBatis 可以使用简单的 XML 或注解来配置和映射原生信息，将接口和 Java 的 POJOs(Plain Ordinary Java Object,普通的 Java对象)映射成数据库中的记录。
* **Shiro**: Apache Shiro是一个强大且易用的Java安全框架,执行身份验证、授权、密码和会话管理。使用Shiro的易于理解的API,您可以快速、轻松地获得任何应用程序,从最小的移动应用程序到最大的网络和企业应用程序。扩展性好。
* **durid数据库连接池** : DRUID是阿里巴巴开源平台上一个数据库连接池实现，它结合了C3P0、DBCP、PROXOOL等DB池的优点，同时加入了日志监控，可以很好的监控DB池连接和SQL的执行情况，可以说是针对监控而生的DB连接池，据说是目前最好的连接池。。
* **sf4j** ：支持多种日志系统，使用的是log4j。

### 运行效果
www.journeydrip.cn

暂不开放注册功能，只提供2个测试账号 
管理员账号：root 密码: 123456
普通用户账号: admin 密码 :admin

#### 开发工具
##### IDE
前期使用了Eclipse，并打包成成war包发布，
后来转IDEA即[Intellij Idea]更智能，强烈推荐 **Idea**
##### 依赖管理工具
使用maven，简单易上手

#####开发环境
#### jdk1.8
#### tomcat8.5
####m mysql5.5

## 使用
### 下载
`Download Zip`或者`git clone`
	git clone https://github.com/zqd-carlos/journeydrip.git
  
### 导入
建议使用IDEA，eclipse也没问题

### 页面登录
*本项目使用了视频作为背景。分为了春夏秋冬四个页面，并开始做一个随机生成，随机其中的一个登陆页。


##### 文件配置
####基本文件配置
#######
spring-mybatis：
spring-mvc
spring-shiro

#####  项目请求web目录
<servlet-mapping>
    <servlet-name>DispatcherServlet</servlet-name>
    <url-pattern>/slogin</url-pattern>    //显示登录
    <url-pattern>/login</url-pattern>      //登录请求
    <url-pattern>/sindex</url-pattern>    //显示主页
    <url-pattern>/sanalyze</url-pattern>    //站长统计，只有站长有权限，普通用户被拦截
    <url-pattern>/svisted</url-pattern>   //访问者记录
    <url-pattern>/scontact</url-pattern>    //练习我们，发送邮件，QQ联系我们
    <url-pattern>/showdongmanlist</url-pattern> //动漫列表区
    <url-pattern>/showgamelist</url-pattern>    //游戏列表区
    <url-pattern>/shownovellist</url-pattern>   //小说列表区
    <url-pattern>/nopermission</url-pattern>    //错误或者没有权限的页面
    <url-pattern>*.form</url-pattern>     //所有的.from请求，对应controller中的url资源统一占位符
  </servlet-mapping>




