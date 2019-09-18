package cn.journeydrip.service.imp;

import cn.journeydrip.dao.DongmanMapper;
import cn.journeydrip.entity.dongman;
import cn.journeydrip.service.DongmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * dongmanService接口的实现类，用来具体实现dongmanService中的抽象方法
 * 需要注入
 */
@Service
public class DongmanServiceImp implements DongmanService {

    //注入，创建dongmanmapper
    @Autowired
    private DongmanMapper dongmanmapper;

    /**
     * 实现Service中的selectalldongman方法
     * @return 返回一个dongman的list集合
     */
    @Override
    public List<dongman> selectAlldongman(int page) {

        List<dongman> dongmanList=dongmanmapper.selectAlldongman(page);
 /*       System.out.println("这里是业务层的列表");
        //这里是业务层
        for (dongman d:dongmanList) {
            System.out.println(d);
        }*/
        return dongmanList ;
    }




}
