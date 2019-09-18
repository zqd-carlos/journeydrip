package cn.journeydrip.service.imp;

import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;

import cn.journeydrip.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.journeydrip.entity.visted;
import cn.journeydrip.entity.User;
import cn.journeydrip.mail.SEmail;
import cn.journeydrip.dao.UserMapper;

/**
 *	业务层UserService的具体实现类
 * 	实现UserService中的具体方法，即登录和注册
 *
 */

@Service("userService")
public class UserServiceImp implements UserService {

	
	/**
	 * 	让spring去创建一个对象，由spring进行管理，name可以省略，名字为userMapper
	 */
	//@Resource(name="userMapper")
	@Autowired
	private UserMapper userMapper;

	 /*
	  * 用户的登录方法，实现用户的登录
	  */
	@Override
	public User login(String username, String password) {
		//传入一个用户名和密码,先查找用户的用户名,如果没找到,返回报错信息。
		//如果有该用户名,判断密码是否正确,如果密码也正确,则登录,返回用户
		//如果不正确,返回错误信息
	//	System.out.println("这里是业务层service");
	//	System.out.println("用户输入的用户名为"+username+" 用户输入的密码为"+password);

		User user=userMapper.selectByUsername(username);
		//创建一个user对象，用来存储从userMapper中找到的结果
	//	System.out.println("这里是查询出来的用户的用户名和密码"+user.getUsername()+"  "+"   "+user.getPassword());
		if (user.getUsername()==null) {	//如果在数据库中没有找到该用户名
			throw new RuntimeException("用户名输入错误");			
		}else {							//如果再数据库中找到了该用户名,则判断密码
			if (password.equals(user.getPassword())) {			//如果用户密码也正确,则登录，返回一个用户
				return user;
			}else {
				throw new RuntimeException("密码输入错误");
			}	
			
		}
		
	}

	/**
	 * 这个方法用来实现用户发送邮件的功能，然后返回一个boolean类型
	 * 如果返回成功，返回true，并且提示失败返回false并抛出异常
	 */
	@Override
	public void sendemail(String name,String email,String message) {
		SEmail sEmail=new SEmail();
		//如果发送成功，直接true返回，如果失败，抛出异常	
		try {
			sEmail.sendemail(name,email,message);	//这里调用方法
		} catch (GeneralSecurityException e) {
			e.printStackTrace();
			throw new RuntimeException("邮件发送失败");
		}
	}

	/**
	 * 实现增加访问者的方法,具体实现写在这里！！！
	 */
	@Override
	public void insertvisted(String username) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date=df.format(new Date());//转化成字符串型传入
	//	System.out.println("service---"+username+"----"+date);
		userMapper.insertVisted(username, date);//插入值
	}

	/**
	 * 访问者的查询方法，用来查询所有的访问者，返回一个list集合。
	 */
	@Override
	public List<visted> selectAllvisited() {
		List<visted> visitorList=userMapper.selectAllvisited();
	//	System.out.println("service--"+visitorList);
		return visitorList;
	}


	/**
	 * 通过用户名查询相应的用户和密码
	 * @param username
	 * @return
	 */
	public User getUserByUserName(String username) {
		//根据账号获取账号密码
		User userByUserName = userMapper.selectByUsername(username);
		return userByUserName;
	}

}
