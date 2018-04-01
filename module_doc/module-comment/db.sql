-- 评论
create table `comment` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `parent_id` bigint unsigned not null default '0' comment '父评论ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `content` text not null default '' comment '评论内容',
  `reply_user_id` bigint unsigned not null default '0' comment '回复用户ID',
  `target_id` bigint unsigned not null default '0' comment '回复目标ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0未删除；1.已删除',
  primary key (`id`)
) engine = innodb default charset = utf8 comment = '评论表';