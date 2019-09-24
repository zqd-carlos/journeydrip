package cn.journeydrip.aop;


import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 *
 * 这个类用来将游戏，动漫，小说列表中的显示方法切出来，减少同样代码
 *
 */
@Component
@Aspect
public class ListAspect {

    //设置一个切点，约定切哪些方法，这里我需要切动漫，游戏。小说的列表的显示方法
    //execution表达式。第一个*号表示不限返回类型、第二个*号表示所有的包，showlist()表示所有的showlist方法,方法中的点表示不限参数
    @Pointcut("execution(* cn.journeydrip.controller.*.showlist(..))")
    public void pagePoint(){};


    //定义的这个方法在切点切出来的方法前执行
    @Before("pagePoint()")
    public void pageAspect(){

        System.out.println("这里是aop面向切面编程中的方法");

    }




}
