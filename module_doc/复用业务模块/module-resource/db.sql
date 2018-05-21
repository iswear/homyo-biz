-- 文件资源表
create table `file` {
  `id` bigint unsigned not null default '0' comment '主键ID',
  `url` varchar(256) not null default '' comment '文件URL',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(256) not null default '' comment '描述',
  `md5` varchar(32) not null default '' comment '文件md5',
  `type` tinyint(3) unsigned not null default '1' comment '文件类型：1.图片；2.音频；3.视频；4.JSON；5.脚本；6.文档',
  `ext` varchar(16) not null default '' comment '文件扩展名',
  `size` bigint unsigned not null default '0' comment '文件大小',
  `upload_user_id` bigint unsigned not null default '0' comment '上传用户ID',
  `upload_time` timestamp not null default current_timestamp comment '上传时间',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key (`id`)
} engine = innodb default charset = utf8 comment = '文件资源表';

-- 图片文件表
create table `image` (
  `id` bigint unsigned not null default '0' comment '主键ID',
  `width` int(11) unsigned not null default '0' comment '图片宽度',
  `height` int(11) unsigned not null default '0' comment '图片高度',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '图片资源扩展表';

-- 音频文件表
create table `aduio` (
  `id` bigint unsigned not null default '0' comment '主键ID',
  `duration` int(11) unsigned not null default '0' comment '时长',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '音频资源扩展表';

-- 视频文件表
create table `audio` (
  `id` bigint unsigned not null default '0' comment '主键ID',
  `duration` int(11) unsigned not null default '0' comment '时长',
  `width` int(11) unsigned not null default '0' comment '宽度',
  `height` int(11) unsigned not null default '0' comment '高度',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '视频资源扩展表';

-- 脚本文件表
create table `script` (
  `id` bigint unsigned not null default '0' comment '主键ID',
  `lang` int(11) unsigned not null default '0' comment '编程语言：1.JS',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `deleted` tinyint(1) unsigned not null default '0' comment '是否已删除：0.未删除；1.已删除',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '脚本资源扩展表';