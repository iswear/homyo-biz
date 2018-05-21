-- 属性表
create table `property` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `name` varchar(32) not null default '' comment '名称',
  `creator_user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`) 
) engine = InnoDB default charset = utf8 comment = '属性表';

-- 属性值表
create table `value` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `value` varchar(64) not null default '' comment '值',
  `creator_user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '属性值';

-- 属性值枚举关系
create table `property_value` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `property_id` int(11) unsigned not null default '0' comment '属性ID',
  `value_id` int(11) unsigned not null default '0' comment '值ID',
  `creator_user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '属性值枚举';

