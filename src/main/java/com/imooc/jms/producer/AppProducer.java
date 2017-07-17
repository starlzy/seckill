package com.imooc.jms.producer;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by lzy on 17-7-17.
 */
public class AppProducer {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/spring-producer.xml");
        ProducerService service = context.getBean(ProducerService.class);
        for(int i=0; i < 100; ++i){
            service.sendMessage("test" + i);
        }
        context.close();
    }
}
