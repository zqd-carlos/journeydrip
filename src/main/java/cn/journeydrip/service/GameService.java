package cn.journeydrip.service;

import cn.journeydrip.entity.Game;

import java.util.List;

/**
 *  gameService接口，用来实现gamedao中的操作，并做处理
 */
public interface GameService {

    /**
     * 通过页码查询动漫表所有的信息
     * @return 返回一个game的集合
     */
    List<Game> selectAllgame(int page);



}
