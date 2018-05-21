-- 分类表
create table `category` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `name` varchar(32) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `parent_category_id` int(11) unsigned not null default '0' comment '父分类ID',
  `creator_user_id` bigint unsigned not null default '0' comment '创建用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '分类表';

-- 分类属性继承关系表
create table `category_property_relation` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `property_id` int(11) unsigned not null default '0' comment '属性ID',
  `creator_user_id` int(11) unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '分类属性继承关系表';

-- 分类自生属性表
create table `category_property_value_relation` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `property_value_relation_id` int(11) unsigned not null default '0' comment '属性值ID',
  `creator_user_id` int(11) unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '分类自生属性表';


