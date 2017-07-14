package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.SuccessKilled;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * Created by lzy on 17-7-14.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SuccessKilledDaoTest {

    @Resource
    private SuccessKilledDao successKilledDao;
    @Test
    public void insertSuccessKilled() throws Exception {
       int count = successKilledDao.insertSuccessKilled(1001l,18513151323l);
        System.out.print("當前Count:" + count);
    }

    @Test
    public void queryByIdWithSeckill() throws Exception {
         SuccessKilled successKilleds = successKilledDao.queryByIdWithSeckill(1001l, 18513151323l);
         System.out.println("当前秒杀成功的有："+successKilleds);
         System.out.println("剩余的商品"+successKilleds.getSeckill());
    }

}