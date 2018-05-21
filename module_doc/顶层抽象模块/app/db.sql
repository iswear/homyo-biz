create table `app` (
    `id` int(11) unsigned not null default 'ID',
    `name` varchar(64) not null default '' comment 'APP名称',
    `desc` varchar(512) not null default '' comment 'APP描述',
    `creator_user_id` int(11) unsigned not null default '0' comment '创建者Uid',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = 'APP表';

create table `app_module_dependence_relation` (
    `id` int(11) unsigned not null default 'ID',
    `app_id` int(11) unsigned not null default 'APP-ID',
    `parent_module_id` int(11) unsigned not null default '0' comment '父模块ID',
    `child_module_id` int(11) unsigned not null default '' comment '子模块ID',
    `secret_key` varchar(32) unsigned not null default '' comment '调用密钥',
    `creator_user_id` int(11) unsigned not null default '0' comment '创建者USER-ID',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = 'APP模块依赖关系表';