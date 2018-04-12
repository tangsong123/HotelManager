package testjava;
import com.hotel.util;


public class TestRandomUtil{

    @Test
    public class test1(){
        String s1 = RandomUtil.generateString(15);
        System.out.println(s1);
    }

    @Test
    public class test2(){

        String uid =  UUID.randomUUID().toString();
        System.out.println(uid);
    }
}