-- 笔刷表
create table `brush` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `cell_width` int(11) unsigned not null default '0' comment '笔刷格格宽度',
  `cell_height` int(11) unsigned not null default '0' comment '笔刷格格高度',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '地形笔刷表';

-- 图片剪辑表
create table `image_clip` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `x` int(11) unsigned not null default '0' comment '图片剪辑X偏移',
  `y` int(11) unsigned not null default '0' comment '图片剪辑Y偏移',
  `width` int(11) unsigned not null default '0' comment '图片剪辑宽度',
  `height` int(11) unsigned not null default '0' comment '图片剪辑高度',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '图片剪辑表';

-- 精灵表
create table `sprite` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '精灵表';

-- 脚本表
create table `script` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '脚本表';

-- 地图表
create table `map` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `type` tinyint(3) unsigned not null default '1' comment '地图类型：1.图片地图；2.矩形地图；3.菱形地图'
  `file_id` bigint unsigned not null default '0' comment '文件ID',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = '地图表';

-- npc表
create table `npc` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `name` varchar(64) not null default '' comment '名称',
  `des` varchar(255) not null default '' comment '描述',
  `curr_sprite_id` bigint unsigned not null default '' comment '当前精灵ID',
  `curr_map_id` bigint unsigned not null default '' comment '当前地图ID',
  `curr_x` int(11) unsigned not null default '' comment '当前所在地图坐标X',
  `curr_y` int(11) unsigned not null default '' comment '当前所在地图坐标Y',
  `user_id` bigint unsigned not null default '0' comment '用户ID',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = 'npc表';

-- npc挂载脚本表
create table `npc_script_relation` (
  `id` bigint unsigned not null default '0' comment 'ID',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
  `npc_id` bigint unsigned not null default '0' comment 'NPCID',
  `script_id` bigint unsigned not null default '0' comment '脚本表',
  primary key(`id`)
) engine = innodb default charset = utf8 comment = 'npc挂载脚本';