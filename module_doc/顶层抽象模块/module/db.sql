create table `module` (
    `id` int(11) unsigned not null default 'ID',
    `name` varchar(64) not null default '' comment '模块名称',
    `package` varchar(255) not null default '' comment '模块包名',
    `desc` varchar(512) not null default '' comment '模块说明',
    `creator_user_id` bigint unsigned not null default '' comment '创建者Uid',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '模块表';