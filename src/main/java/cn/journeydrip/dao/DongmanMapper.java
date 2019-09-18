package cn.journeydrip.dao;

import java.util.List;
import cn.journeydrip.entity.dongman;
import org.apache.ibatis.annotations.Param;

/**
 * 这里是动漫的列表的接口，用来实现动漫列表中页面的显示
 */
public interface DongmanMapper {




    /* 用来查询所有的表中的信息*/
    List<dongman> selectAlldongman(@Param("page") Integer page);


}
