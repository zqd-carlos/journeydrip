package cn.journeydrip.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.sun.deploy.net.HttpResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.journeydrip.entity.visted;
import cn.journeydrip.entity.User;
import cn.journeydrip.service.UserService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	
	//调用一个UserService，创建一个对象
	@Autowired
	private UserService userservice;


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
	
	/**
	 * 显示主页的方法
	 * @return
	 */
	@RequestMapping("/sindex")
	public String showindex() {
		return "/WEB-INF/page/index.jsp";
	}


	/**
	 * 站长统计的方法
	 * @param model
	 * @return
	 */
	@RequestMapping("/sanalyze")
	public String visited(Model model) {
		//模拟从数据库中获取用户列表数据
		List<visted> vistedList=userservice.selectAllvisited();
		model.addAttribute("vistedList",vistedList);
		return "/WEB-INF/page/analyze.jsp";
	}
	
	/**
	 * 這個是用來寫站長統計中ajax的響應內容的
	 * @param req
	 * @param resp
	 * @throws IOException
	 */
	@RequestMapping("/svisted")
	@ResponseBody
	public List<visted> showvisited(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("utf-8");
		String chara=req.getParameter("chara");
		System.out.println(chara);
		List<visted> vistedList = null;
		if(chara.equals("帅")){

			       /*list集合中存放的是好多student对象*/
					 vistedList=userservice.selectAllvisited();
					//循环打印，判断后台是否获取到json数据
					// for (visted v: vistedList) {
					//  System.out.println("用戶名:"+v.getUsername()+"   data："+v.getDate()); }

				 /*  *//*将list集合装换成json对象*//*
				    JSONArray data = JSONArray.fromObject(vistedList);
			       //接下来发送数据
				   *//*得到输出流*//*
				   PrintWriter respWritter = resp.getWriter();
				   *//*将JSON格式的对象toString()后发送*//*
				   respWritter.append(data.toString());
				   //关闭输出
				   respWritter.close();*/

		}
		return vistedList;
	}


	/**
	 * 用户的登录方法，用于用户的登录
	 * @param username
	 * @param password
	 * @param model	方便向前台传递信息
	 * @param session	用于保存用户的会话信息
	 * @return
	 * @throws IOException 
	 * //	public String login(@RequestParam("username")String username,String password,Model model,HttpSession session) throws IOException {
	 */
	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpSession session) throws IOException {
		//controller中的登录方法，调用service中的登录
		//传入一个用户名和密码，
		//System.out.println("传入的用户名："+username+"  密码"+password);
/*		try {
			//创建一个用户来接收UserService中登录方法返回的用户对象
			 System.out.println("这里是controller层");
			User user=userservice.login(username, password);
			//若登录成功，则保存该用户信息到session中，同时重定向到主页。判断在service中完成
			// System.out.println("controller---"+username+"----"+password);
			userservice.insertvisted(username);//增加访问者，直接username也行，这样写条理清楚些
            session.setAttribute("user", user);
            //System.out.println("重定向到主页");
			return "redirect:/sindex";
		} catch (RuntimeException e) {
			//若登录失败，则保存错误信息传给页面，并转发到登录页面
			model.addAttribute("error", e.getMessage());
			//System.out.println("重定向到登录页面");
			return "redirect:/slogin";
		}*/


		if(username==null){
			System.out.println("用户名不能为空");
			return "/slogin";
		}
		//主体,当前状态为没有认证的状态“未认证”
		Subject subject = SecurityUtils.getSubject();
		// 登录后存放进shiro token
		UsernamePasswordToken token=new UsernamePasswordToken(username,password);
		User user;
		//登录方法（认证是否通过）
		//使用subject调用securityManager,安全管理器调用Realm
		try {
			//利用异常操作
			//需要开始调用到Realm中
			System.out.println("========================================");
			System.out.println("1、进入认证方法，这里是controller层");
			subject.login(token);
			user = (User)subject.getPrincipal();
			session.setAttribute("user",subject);
			System.out.println("登录成功");
		} catch (Exception e) {
			System.out.println("这里是controller中的catch方法，表示登录账号或者密码错误");
			return "redirect:/slogin";
		}
		return "/sindex";

	}
	
	
	/**
	 * 用户用邮件联系我们的方法
	 * @param response
	 * @return	无论成功与否返回到联系界面
	 * @throws IOException	
	 */
	@RequestMapping("/scontact")
	public String sengemail(HttpServletRequest request,HttpServletResponse response) throws IOException{
		//调用UserService中的发送邮件的方法
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		//System.out.println(name+" "+email+" "+message+"      调用方法前传入");
		PrintWriter out;
		out=response.getWriter();
	try {
		userservice.sendemail(name,email,message);
		//System.out.println(name+" "+email+" "+message+"      这里是controller");
		//如果成功,弹框出现提示成功
		out.print("<script>alert('success'); window.location.href='contact.form' </script>");
	} catch (Exception e) {
		out.print("<script>alert('fail'); window.location.href='contact.form' </script>");
	}finally {
		//去除finally中无用的警告，因为alert弹框弹框后默认是不执行的，所以finally中的内容其实匹配了
		//但是没有执行，所以要在alert后加window.location.href='contact.form'跳转
		out.flush();
		out.close();
		return "/WEB-INF/page/contact.form";
	}		
}
	
	/**
	 * 通过url映射占位符到页面,使用的为form请求
	 * @param page
	 * @return
	 */
	@RequestMapping("/{page}.form")
	public String testPathVariable(@PathVariable("page") String page) {
	return "/WEB-INF/page/"+page+".html";
	//由于WEB-INF目录下的受保护，所以要使用转发访问
	}


	@RequestMapping("/nopermission")
	public String noPermission(){

		return "error.html";
	}

}
