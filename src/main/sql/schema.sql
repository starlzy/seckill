CREATE DATABASE seckill;

use seckill;

CREATE TABLE seckill (
`seckill_id` bigint not null auto_increment comment '商品库存id',
`name` varchar(120) not null comment '商品名称',
`number` int not null comment '库存数量',
`create_time` timestamp not null comment '创建时间',
`start_time` timestamp not null comment '秒杀开启时间',
`end_time` timestamp not null comment '秒杀结束时间',
primary key(seckill_id),
key idx_create_time(create_time),
key idx_start_time(start_time),
key idx_end_time(end_time)
)engine=Innodb auto_increment=1000 default charset=utf8 comment='秒杀库存表';

insert into seckill(name,number,start_time,end_time)
    values
    ('3200元秒杀iphone8', 50, '2017-07-14 00:00:00', '2017-07-15 00:00:00');
    ('500元秒杀ipad', 200, '2017-07-20 00:00:00', '2017-07-21 00:00:00'),
    ('300元秒杀乐视2max', 300, '2017-07-20 00:00:00', '2017-07-21 00:00:00'),
    ('200元秒杀红米note', 400, '2017-07-20 00:00:00', '2017-07-21 00:00:00');

create table success_killed(
    `seckill_id` bigint not null comment '秒杀商品id',
    `user_phone` bigint not null comment '用户手机号',
    `state` tinyint not null comment '状态标示:-1：无效，0：成功，1：已付款，2：已发货',
    `create_time` timestamp not null comment '创建时间',
    primary key(seckill_id,user_phone),
    key idx_create_time(create_time)
)engine=Innodb default charset=utf8 comment='秒杀明细表';