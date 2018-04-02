-- 用户表
create table `user` (
    `id` bigint unsigned not null default '0' comment '用户ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `user_name` varchar(32) not null default '' comment '用户名',
    `user_pwd` varchar(32) not null default '' comment '用户密码',
    `nick_name` varchar(64) not null default '' comment '用户昵称',
    `head_img` varchar(256) not null default '' comment '用户头像',
    `salt` varchar(8) not null default '' comment '密码盐值',
    `email` varchar(64) not null default '' comment '邮箱',
    `phone` varchar(16) not null default '' comment '手机',
    `reg_time` timestamp not null default current_timestamp comment '注册时间',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '用户表';

-- 用户session记录表
create table `session` (
    `id` bigint unsigned not null default '0' comment '用户ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `session_id` varchar(64) not null default '' comment '会话SESSION',
    `platform` tinyint(11) unsigned not null default '0' comment '平台：1.IOS客户端；2.ANDROID客户端；3.移动WEB；4.PCWEB',
    `version` varchar(16) not null default '' comment '客户端版本',
    `ip` varchar(16) not null default '' comment '用户IP',
    `user_id` bigint unsigned not null default '' comment '用户ID',
    `login_time` timestamp not null default current_timestamp comment '登录时间',
    `deleted` tinyint(1) not null default '' comment '是否已经删除；0.未删除；1.已删除',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '用户session记录表';

-- 用户社交信息表
create table `society` (
    `id` bigint unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `platform` int(11) unsigned not null default '0' comment '1.微信；2.微博；3.博客；4.QQ；5.个人网站；6.github',
    `url` varchar(255) not null default '' comment 'URL链接地址',
    `des` varchar(255) not null default '' comment '描述',
    `user_id` bigint unsigned null default '' comment '用户ID',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除', 
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '用户社交网络信息表';

-- 角色表
create table `role` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `name` varchar(64) not null default '' comment '角色名称',
    `des` varchar(128) not null default '' comment '角色描述',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除', 
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '角色';

-- 接口表
create table `api` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `name` varchar(64) not null default '' comment 'API名称',
    `app` varchar(64) not null default '' comment 'API所在APP',
    `url` varchar(64) not null default '' comment 'APIURL地址',
    `des` varchar(255) not null default '' comment 'API描述',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除', 
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '权限';

-- 用户角色关系表
create table `user_role_relation` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `user_id` bigint unsigned not default '0' comment '用户ID',
    `role_id` int(11) unsigned not null default '0' comment '角色ID',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`) 
) engine = InnoDB default charset = utf8 comment = '用户角色关系';

-- 角色权限关系表
create table `role_api_relation` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `role_id` int(11) unsigned not null default '0' comment '角色ID',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '橘色权限关系';

-- 用户微信绑定表
create table `binder_wx` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `union_id` varchar(64) not null default '' comment '微信UNION_ID',
    `open_id` varchar(64) not null default '' comment '微信OPEN_ID',
    `app_id` varchar(32) not null default '' comment '微信APP_ID',
    `access_token` varchar(64) not null default '' comment '授权TOKEN',
    `refresh_token` varchar(64) not null default '' comment '刷新TOKEN',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '用户微信绑定';

-- 用户微博绑定表
create table `binder_wb` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    `uid` bigint unsigned not null default '0' comment '',
    `access_token` varchar(64) not null default '' comment '',
    `deleted` tinyint(1) not null default '0' comment '是否已经删除：0.未删除；1.已删除',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '用户微博绑定';

-- 用户qq绑定表
create table `binder_qq` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '用户QQ绑定';

-- 用户github绑定表
create table `binder_github` (
    `id` int(11) unsigned not null default '0' comment 'ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key(`id`)
) engine = InnoDB default charset = utf8 comment = '用户github绑定';
