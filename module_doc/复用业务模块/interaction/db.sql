-- 评论
create table `comment` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `parent_id` bigint unsigned not null default '0' comment '父评论ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `content` text not null default '' comment '评论内容',
  `reply_user_id` bigint unsigned not null default '0' comment '回复用户ID',
  `target_id` bigint unsigned not null default '0' comment '回复目标ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key (`id`)
) engine = innodb default charset = utf8 comment = '评论表';

-- 计数器(点赞，评论，浏览量等)
create table `target_counter` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `count` int(11) unsigned not null default '0' comment '计数值',
  `target_id` int(11) unsigned not null default '0' comment '目标ID',
  `type` tinyint(1) unsigned not null default '0' comment '类型：业务自行定义', 
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment '计数表';

-- 关系表(1V1)
create table `target_user_relation` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `user_id` int(11) unsigned not null default '0' comment '用户ID',
  `target_id` int(11) unsigned not null default '0' comment '目标ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment '用户关系表';
