package cn.journeydrip.service.imp;


import cn.journeydrip.dao.NovelMapper;
import cn.journeydrip.entity.Novel;
import cn.journeydrip.service.NovelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * NovelService接口的实现类，用来具体实现NovelService中的抽象方法
 * 需要注入
 */
@Service
public class NovelServiceImp implements NovelService {

    //注入，创建Novelmapper
    @Autowired
    private NovelMapper novelMapper;

    /**
     * 实现Service中的selectallnovel方法
     * @return 返回一个novel的list集合
     */
    @Override
    public List<Novel> selectAllnovel(int page) {

        List<Novel> novelList=novelMapper.selectAllnovel(page);
 /*       System.out.println("这里是业务层的列表");
        //这里是业务层
        for (dongman d:dongmanList) {
            System.out.println(d);
        }*/
        return novelList ;
    }




}
