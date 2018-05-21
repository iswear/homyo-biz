-- 文章表
create table `article` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `title` varchar(64) not null default '' comment '文章标题',
  `des` varchar(255) not null default '' comment '文章简介',
  `content` text not null default '' comment '文章内容',
  `creator_user_id` bigint unsigned not null default '0' comment '用户ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key (`id`)
) engine = innodb default charset = utf8 comment = '文章表';

create table `article_attachment` (
  `id` int(11) unsigned not null default '0' comment 'ID',
  `article_id` bigint unsigned not null default '0' comment '文章ID',
  `file_id` int(11) unsigned not null default '0' comment '文件ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key (`id`)
) engine = innodb default charset = utf8 comment = '文章附件表';

-- 私有帖子分类表
create table `category_article_private_relation` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `article_id` int(11) unsigned not null default '0' comment '文章ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
) engine = innodb default charset = utf8 comment = '私有分类帖子关系表';

-- 公开帖子分类表
create table `category_article_public_relation` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `category_id` int(11) unsigned not null default '0' comment '分类ID',
  `article_id` int(11) unsigned not null default '0' comment '文章ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '公开分类帖子关系表';