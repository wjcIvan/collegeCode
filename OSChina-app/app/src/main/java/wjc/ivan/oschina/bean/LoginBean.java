package wjc.ivan.oschina.bean;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * Created by 龙心诚 on 2018/6/27 0027.
 */
@XStreamAlias("oschina")
public class LoginBean {
    @XStreamAlias("result")
    public Result result;
    @XStreamAlias("user")
    public User user;

}
