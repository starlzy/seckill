package com.imooc.jms.producer;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by lzy on 17-7-17.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-producer.xml"})
public class ProducerServiceTest {
    @Autowired
    ProducerService service;

    public void sendMessage(String message) {
        for (int i = 0; i < 100; ++i) {
            service.sendMessage("test" + i);
        }

    }
}