-- ALIPAY
create table `alipay_notify_record` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `deleted` tinyint(1) not null default '0' comment '删除状态：0.未删除；1.已删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '阿里支付异步回调记录表';


-- ALIPAY
create table `wxpay_notify_record` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `deleted` tinyint(1) not null default '0' comment '删除状态：0.未删除；1.已删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '微信支付异步回调记录表';