# journeydrip
journeydrip

## 介绍
本项目为简单的java-web项目，是一个J2Ee项目快速开发脚手架，集成了比较常用的一些框架，比如SSM和shiro框架。
会慢慢完善优化。尽量会做到每日一更，

#### 组成
##### 主要框架

#### 基本结构

├─src
│  └─main
│      │  main.iml
│      │  
│      ├─java
│      │  └─cn
│      │      └─journeydrip
│      │          ├─aop
│      │          │      ListAspect.java			//AOP的切面编程，将同样的显示列表的showlist()方法切出来。
│      │          │      
│      │          ├─controller
│      │          │      DongmanController.java		//动漫列表的控制层，用来出来动漫类的请求
│      │          │      GameController.java		
│      │          │      NovelController.java		
│      │          │      UserController.java		//用户的控制层，用来处理用户的请求和方法者的请求，获取当前用户的主题，然后转到realm中去登录和授权，由shiro完成密码的比对，和用户的授权
│      │          │      
│      │          ├─dao		
│      │          │      DongmanMapper.java			//动漫列表的控制层，用来处理动漫类的请求	
│      │          │      GameMapper.java		  
│      │          │      NovelMapper.java			
│      │          │      UserMapper.java			//用户的控制层，用来处理用户的请求和方法者的请求。比如查询用户名，角色权限等
│      │          │      
│      │          ├─entity							//比较传统的RBAC(基于角色控制的访问控制)	
│      │          │      dongman.java				//实体类，动漫，游戏，小说，权限，用户，角色，访问者，页码
│      │          │      Game.java
│      │          │      Listpage.java
│      │          │      Novel.java
│      │          │      Permission.java
│      │          │      Role.java
│      │          │      User.java
│      │          │      visted.java
│      │          │      							
│      │          ├─filter							//过滤器类，用来过滤字符串的编码和拦用户非法进入，后使用shiro的过滤器，这里就不在web中配置，已取消使用并做保留
│      │          │      Filter.java
│      │          │      PageFilter.java			
│      │          │      
│      │          ├─interceptor
│      │          │      Interceptor.java			//  拦截器，基于spring，由于shiro框架做了拦，这里暂不使用，做保留         
│      │          │      
│      │          ├─listener
│      │          │      SessionCounter.java		//监听器，监听网站的在线人数
│      │          │      
│      │          ├─mail
│      │          │      SEmail.java				//邮件类，使用smtp和pop3接口，实现用户使用邮件方式来发送邮件给我们
│      │          │      
│      │          ├─realm
│      │          │      UserRealm.java				//realm，shiro框架中用来实现用户登录和用户授权的方法，由shiro完成用户密码的比对和授权，接收controller传过来的用户名参数
│      │          │      
│      │          └─service
│      │              │  DongmanService.java		//服务层，基本业务层
│      │              │  GameService.java
│      │              │  NovelService.java
│      │              │  UserService.java
│      │              │  
│      │              └─imp
│      │                      DongmanServiceImp.java	//服务层的实现类，注入dao层
│      │                      GameServiceImp.java
│      │                      NovelServiceImp.java
│      │                      UserServiceImp.java
│      ├─resources
│      │  │  db.properties								//数据库的驱动等信息
│      │  │  ehcache.xml								//ehcache缓存
│      │  │  log4j.properties							//log4j日志
│      │  │  mybatis-config.xml							//mybatis的配置文件，里面为mybatis的事务管理配置
│      │  │  
│      │  ├─mappers										//dao层的映射类，mybatis框架对其xml的配置，里面用来完成sql语句的代码，对数据库的业务逻辑
│      │  │      DongmanMapper.xml
│      │  │      GameMapper.xml
│      │  │      NovelMapper.xml
│      │  │      UserMapper.xml
│      │  │      
│      │  ├─springconfig								//spring的配置文件
│      │  │      spring-dao.xml							//整合spring 和mybatis，配置数据库连池为durid，配置sqlsessionfactory
│      │  │      spring-mvc.xml							//整合spring和springmvc 配置前端控制器dispatcherservlet（三个核心，控制器适配器，控制器处理器，视图解析器）
│      │  │      spring-service.xml						//spring配置的一些对象和扫描		
│      │  │      spring-shiro.xml						//整合spring和shiro，配置安全管理器SecurityManager(shiro框架的核心)和shiro的控制器，及remberme，cache等信息
│      │  │      
│      │  └─sql
│      │          dongman.sql							//sql语句
│      │          game.sql
│      │          novel.sql
│      │          permission.sql
│      │          role.sql
│      │          user.sql
│      │          user_role.sql
│      │          visited.sql
│      └─webapp											//前端文件配置
│


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
*本项目使用了视频作为背景。分为了春夏秋冬四个页面，并开始做一个随机生成，随机其中的一个登陆页

	//显示登录的方法，随机产生登录页面
	@RequestMapping("/slogin")
	public String showlogin() {
		int i=(int) Math.floor(Math.random()*4+1);
		switch (i) {
		case 1:
			return "loginspring.html";
		case 2:
			return "loginsummer.html";
		case 3:
			return "loginautumn.html";
		default:
			return "loginwinter.html";
		}
	}

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




