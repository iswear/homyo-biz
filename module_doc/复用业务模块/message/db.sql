-- 消息表
create table `message` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `title` varchar(64) not null default '' comment '标题',
    `content` varchar(255) not null default '' comment '内容',
    `url` varchar(255) not null default '' comment '跳转链接', 
    `from_user_id` int(11) unsigned not null default '0' comment '发送者用户ID',
    `to_user_id` int(11) unsigned not null default '0' comment '接收者用户ID',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.已删除；1.未删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = innodb default charset = utf8 comment = '消息表';

create table `message_property` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `message_id` int(11) unsigned not null default '0' comment '消息ID',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.已删除；1.未删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp comment '更新时间',
    primary key (`id`)
) engine = innodb default charset = utf8 comment = '消息属性表';

-- 消息附件表
create table `message_attachment` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `message_id` int(11) unsigned not null default '0' comment '消息ID',
    `file_id` int(11) unsigned not null default '0' comment '文件ID',
    `deleted` tinyint(1) unsigned not null default '0' comment '是否已经删除：0.已删除；1.未删除',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = innodb default charset = utf8 comment = '消息附件';