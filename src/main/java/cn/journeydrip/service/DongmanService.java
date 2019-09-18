package cn.journeydrip.service;

import cn.journeydrip.entity.dongman;

import java.util.List;

/**
 *  dongmanService接口，用来实现dongmandao中的操作，并做处理
 */
public interface DongmanService {

    /**
     * 通过页码查询动漫表所有的信息
     * @return 返回一个dongman的集合
     */
    List<dongman> selectAlldongman(int page);



}
