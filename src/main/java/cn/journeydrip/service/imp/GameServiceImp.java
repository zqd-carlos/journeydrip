package cn.journeydrip.service.imp;

import cn.journeydrip.dao.GameMapper;
import cn.journeydrip.entity.Game;
import cn.journeydrip.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * GameService接口的实现类，用来具体实现GameService中的抽象方法
 * 需要注入
 */
@Service
public class GameServiceImp implements GameService {

    //注入，创建gamemapper
    @Autowired
    private GameMapper gameMapper;

    /**
     * 实现Service中的selectallgame方法
     * @return 返回一个game的list集合
     */
    @Override
    public List<Game> selectAllgame(int page) {

        List<Game> gameList=gameMapper.selectAllgame(page);
        System.out.println("这里是业务层的列表");
        //这里是业务层
        for (Game d:gameList) {
            System.out.println(d);
        }
        return gameList ;
    }




}
