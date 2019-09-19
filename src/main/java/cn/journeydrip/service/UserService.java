package cn.journeydrip.service;

import java.util.List;

import cn.journeydrip.entity.Permission;
import cn.journeydrip.entity.User;
import cn.journeydrip.entity.visted;

/**
 * 业务层，调用持久层的接口方法，由它的实现类去实现业务层中的方法
 * @author admin
 *
 */
public interface UserService {
	
	/**
	 * 用户的登录方法
	 * @param username	传入用户的用户名
	 * @param password	传入用户的密码
	 * @return	一个用户
	 */
	User login(String username,String password);
	
	/**
	 *	实现用户发送邮件的方法
	 * @return
	 */
	void sendemail(String name,String email,String message);

	
	/**
	 * 用户的访问插入，传入访问者的用户名，日期自动生成。不用返回值
	 * @param username	访问者的名
	 */
	void insertvisted(String username);
	
	
	/**
	 * 查询访问者的列表，不传入东西，返回查询到的所有用户
	 * @return	列表结合，参数类型为访问者
	 */
	List<visted> selectAllvisited();


	/**
	 * 根据账号获取账号密码
	 * @param username
	 * @return UserPojo
	 */
	User getUserByUserName(String username);



	/**
	 * 根据账号获取该账号的权限
	 *
	 * @param user
	 * @return List
	 */
	List<Permission> getPermissionsByUser(User user);

}
