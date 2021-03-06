package cn.journeydrip.controller;

import cn.journeydrip.entity.Game;
import cn.journeydrip.entity.dongman;
import cn.journeydrip.service.DongmanService;
import cn.journeydrip.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class GameController {

    //创建Service的依赖
    @Autowired
    private GameService gameService;

    /**
     *  这里用来处理前端传入的请求动漫列表的请求
     *  不用传入值，直接返回一个列表,通过response将返回的列表以json格式返回前端
     */
    @RequestMapping("/showgamelist")
    @ResponseBody
    public List<Game> showlist(HttpServletRequest req, HttpServletResponse resp){
        String page=req.getParameter("page");
        int  k  = Integer.valueOf(page);
        int number=16*(k-1);
        System.out.println("page的值"+k);
        List<Game> gameList=gameService.selectAllgame(number);
        //System.out.println("这里是控制层的list集合");
        //循环打印
        for (Game d:gameList) {
            System.out.println(d);
        }
        return gameList;
    }


}
