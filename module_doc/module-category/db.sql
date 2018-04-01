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

-- 分类表
create table `category` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `namespace_id` int(11) unsigned not null default '0' comment '命名空间ID',
  `parent_id` int(11) unsigned not null default '0' comment '父级分类ID',
  `name` varchar(32) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '分类表';

-- 属性表
create table `property` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(32) not null default '' comment '名称',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
  primary key(`id`) 
) engine = InnoDB default charset = utf8 comment = '属性表';

-- 属性值表
create table `value` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `value` varchar(64) not null default '' comment '值',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '属性值';

-- 属性值枚举关系
create table `property_value_relation` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `property_id` int(11) unsigned not null default '0' comment '属性ID',
  `value_id` int(11) unsigned not null default '0' comment '值ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除'
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '属性值枚举';

-- 分类属性继承关系表
create table `category_property_relation` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `property_id` int(11) unsigned not null default '0' comment '属性ID',
  `user_id` int(11) unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '分类属性继承关系表';

-- 分类自生属性表
create table `category_property_value_relation` (
  `id` int(11) unsigned not null default '0' comment '',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `property_id` int(11) unsigned not null default '0' comment '属性ID',
  `value_id` int(11) unsigned not null default '0' comment '值ID',
  `user_id` int(11) unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '分类自生属性表';












































-- 属性值表
create table `property_value` (

) engine = InnoDB default charset = utf8 comment = '属性值表';

-- 属性分表
create table `category_property` (

) engine = InnoDB default charset = utf8 comment = '分类属性关系表';
