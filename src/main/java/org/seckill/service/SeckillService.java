package org.seckill.service;

import org.seckill.dto.Exposer;
import org.seckill.entity.Seckill;

import java.util.List;

/**
 * 业务接口：站在‘使用者’角度设计接口
 * 三个方面：方法定义粒度，参数，返回类型（return类型/异常）；
 * Created by lzy on 17-7-14.
 */
public interface SeckillService {
    /**
     * 查询所有秒杀记录
     * @return
     */
    List<Seckill> getSeckillList();

    /**
     *
     * @param seckillId
     * @return
     */
    Seckill getById(long seckillId);

    /**
     * 秒杀开启时输出秒杀接口地址，否则输出系统时间和秒杀时间
     * @param seckillId
     */
    Exposer exportSeckillUrl(long seckillId);

    /**
     * 执行 秒杀操作
     * @param seckillId
     * @param userPhone
     * @param md5
     */
    void executeSeckill(long seckillId, long userPhone, String md5);

}
