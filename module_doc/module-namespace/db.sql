-- 分类命名空间表
create table `namespace` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `namespace` varchar(128) not null default '' comment '命名空间',
  `des` varchar(255) not not null default '' comment '描述',
  `password` varchar(32) not null default '' comment '访问密码',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除', 
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment '分类命名控件表';
