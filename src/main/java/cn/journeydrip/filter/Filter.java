package cn.journeydrip.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Filter implements javax.servlet.Filter{

	public Filter() {
		//System.out.println("构造方法");
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// 初始化
		//System.out.println("初始化");
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {	
		//强制转化
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse resp=(HttpServletResponse) response;
				
		//设置编码
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		//判断用户是否登录，如果没有登录，则让用户去登录
		//如果用户名不等于空
		Object judgesession=req.getSession().getAttribute("user");
		//System.out.println(req.getSession());
		//System.out.println(judgesession+"[filetr]");
		if (judgesession!=null) {	//如果用户名不等于空，那么就是用户已经登录了，那么执行操作放行
			chain.doFilter(req, resp);	//直接放行
		}else {						//如果用户名等于空，那么用户就没有登录过，不能放行，返回到登录界面
			req.getRequestDispatcher("/slogin").forward(req, resp);
			 //Object obj = req.getAttribute("name");
		}
		//方便各个浏览器端快速识别并使用各个模块的功能
		//resp.setContentType("Text/html;charset=utf-8");
		//System.out.println("功能");
	}
	
	
	@Override
	public void destroy() {
		//销毁方法
		//System.out.println("销毁");
	
	}



}
