package org.seckill.exception;

/**
 * 所有秒杀异常
 * Created by lzy on 14/07/17.
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
