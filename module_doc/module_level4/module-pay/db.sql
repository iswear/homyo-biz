-- alipay record
create table `xx_table` (
    `id` bigint unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine=InnoDB default charset = utf8 comment='xx表';
