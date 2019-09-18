package cn.journeydrip.service;

import cn.journeydrip.entity.Novel;

import java.util.List;

/**
 *  novelService接口，用来实现noveldao中的操作，并做处理
 */
public interface NovelService {

    /**
     * 通过页码查询动漫表所有的信息
     * @return 返回一个novel的集合
     */
    List<Novel> selectAllnovel(int page);



}
