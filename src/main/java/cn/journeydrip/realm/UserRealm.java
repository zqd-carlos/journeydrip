package cn.journeydrip.realm;

import cn.journeydrip.entity.Permission;
import cn.journeydrip.entity.User;
import cn.journeydrip.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;


/*  设置认证器，shiro框架可以在这里比对用户名和密码的比对 */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authenticationToken) throws AuthenticationException {

        System.out.println("进来验证了");
        //验证账号密码
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        System.out.println("1:"+token.getUsername());
        User user = userService.getUserByUserName(token.getUsername());
        System.out.println("2");
        if(user==null){
            return null;
        }
        //最后的比对需要交给安全管理器
        //三个参数进行初步的简单认证信息对象的包装
        AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getClass().getSimpleName());

        return info;
  /* return null;*/
    }

/*  设置授权器. 认证器完成后在这里进行授权*/
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {

        //用户的授权方法
        User user=(User)principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //获取permission
        if(user!=null) {
            List<Permission> permissionsByUser = userService.getPermissionsByUser(user);
            if (permissionsByUser.size()!=0) {
                for (Permission p: permissionsByUser) {

                    info.addStringPermission(p.getUrl());
                }
                return info;
            }
        }


        return  null;
    }


}
