package cn.journeydrip.dao;


import cn.journeydrip.entity.Game;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 这里是游戏的列表的接口，用来实现游戏列表中页面的显示
 */
public interface GameMapper {

    /* 用来查询所有的表中的信息*/
    List<Game> selectAllgame(@Param("page") Integer page);


}
