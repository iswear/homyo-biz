-- 目标计数器
create table `target_counter` (
  `id` bigint unsigned not null default '' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `count` int(11) unsigned not null default '0' comment '计数值',
  `target_id` int(11) unsigned not null default '0' comment '目标ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment '计数表';

-- 用户目标关系表
create table `user_target_relation` (
  `id` bigint unsigned not null default '' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `user_id` int(11) unsigned not null default '0' comment '用户ID',
  `target_id` int(11) unsigned not null default '0' comment '目标ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment '用户计数表';

