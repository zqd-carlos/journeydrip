package cn.journeydrip.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.journeydrip.entity.User;
import cn.journeydrip.entity.visted;

/**
 * 用来与数据库进行交互的接口类
 * @author admin
 *
 */
public interface UserMapper {
	
	/**
	 * 按用户名进行查询的方法，具体在配置mappers/UserMapper.xml文件中进行实现
	 * @param username	传入用户名
	 * @return	返回一个用户
	 */
	User selectByUsername(@Param("username") String username);

	/**
	 * 用户的访问，传入用户名和登录的时间，不用返回，直接
	 * @param username 用户名
	 * @param date	登录时间
	 */
	void insertVisted(@Param("username")String username,@Param("date")String date);

	/**
	 * 用户的查询所有的访问者方法
	 * @return
	 */
	List<visted> selectAllvisited();



}
