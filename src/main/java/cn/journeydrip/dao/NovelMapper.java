package cn.journeydrip.dao;


import cn.journeydrip.entity.Novel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 这里是小说的列表的接口，用来实现小说列表中页面的显示
 */
public interface NovelMapper {

    /* 用来查询所有的表中的信息*/
    List<Novel> selectAllnovel(@Param("page") Integer page);


}
