package com.imooc.jms.queue;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.jms.*;

/**
 * Created by lzy on 16/07/17.
 */
public class AppProducer {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private static final String url = "tcp://127.0.0.1:61616";
    private static final String queueName = "queue-test";

    public static void main(String[] args) throws JMSException {

        //1.创建ConnectionFactory
        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory(url);

        //2.创建Connection
        Connection connection = connectionFactory.createConnection();

        //3.启动连接
        connection.start();

        //4.创建回话
        //false不启动事物
        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);

        //5.创建一个目标
        Destination destination = session.createQueue(queueName);

        //6.创建一个生产者
        MessageProducer producer = session.createProducer(destination);

        for(int i=0; i<100; i++) {
            // 7.创建消息
            TextMessage textMessage = session.createTextMessage("test" + i);
            producer.send(textMessage);
            System.out.println("发送消息：" + textMessage.getText());
        }
        //9.关闭连接
        connection.close();
    }
}
