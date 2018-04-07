-- 角色表
create table `role` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `name` varchar(64) not null default '' comment '角色名称',
    `des` varchar(128) not null default '' comment '角色描述',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除', 
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '角色';

-- 用户角色关系表
create table `user_role_relation` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `user_id` bigint unsigned not default '0' comment '用户ID',
    `role_id` int(11) unsigned not null default '0' comment '角色ID',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`) 
) engine = InnoDB default charset = utf8 comment = '用户角色关系';

-- 接口表
create table `api` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `name` varchar(64) not null default '' comment 'API名称',
    `app` varchar(64) not null default '' comment 'API所在APP',
    `url` varchar(64) not null default '' comment 'APIURL地址',
    `des` varchar(255) not null default '' comment 'API描述',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除', 
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '权限';

-- 角色权限关系表
create table `role_api_relation` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `role_id` int(11) unsigned not null default '0' comment '角色ID',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '橘色权限关系';