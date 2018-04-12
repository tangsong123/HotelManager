package testjava;

import com.hotel.bean.User;
import com.hotel.dao.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.UUID;


//直接

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring-mvc.xml","classpath*:spring-mybatis.xml"})
public class MapperTest {

    @Autowired
    UserMapper userMapper;

    @Autowired
    SqlSession sqlSession;
    @Test
    public void test1() {
//        System.out.print(userMapper);
//        //插入
//
//        userMapper.insertSelective(new DeleteUser(null,"硕硕",16,"打游戏"));
//        userMapper.insertSelective(new DeleteUser(null,"果果",14,"做作业"));
//
        //批量插入
//        UserMapper mapper  = sqlSession.getMapper(UserMapper.class);
//        for(int i= 0;i<100;i++){
//            String uid = UUID.randomUUID().toString().substring(0,5) + i;
//            mapper.insertSelective(new DeleteUser(null,"批量"+uid+"号",i+1,"打球"+uid));
//        }
    }

}