package com.imooc.jms.consumer;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by lzy on 17-7-17.
 */
public class ConsumerMessageListener implements MessageListener {
    public void onMessage(Message message) {
        TextMessage textMessage = (TextMessage) message;
        System.out.print("接收消息" + textMessage);
    }
}
