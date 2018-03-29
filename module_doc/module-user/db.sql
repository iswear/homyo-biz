-- 用户表
create table `user` (
    `id` bigint unsigned not null default '0' comment '用户ID',
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
    primary key (`id`)
) engine = InnoDB default charset = utf8 comment = '用户表';

-- 用户社交信息表
create table `user_society` (
    
) engine = InnoDB default charset = utf8 comment = '用户社交网络信息表';

-- 角色表
create table `user_role` (

) engine=InnoDB default charset = utf8 comment = '角色';

-- 权限表
create table `user_perm` (

) engine = InnoDB default charset = utf8 comment = '权限';

-- 用户角色关系表
create table `user_role_relation` (

) engine = InnoDB default charset = utf8 comment = '用户角色关系';

-- 角色权限关系表
create table `user_role_perm_relation` (

) engine = InnoDB default charset = utf8 comment = '橘色权限关系';

-- 用户微信绑定表
create table `user_wx` (

) engine = InnoDB default charset = utf8 comment = '用户微信绑定';

-- 用户微博绑定表
create table `user_wb` (

) engine = InnoDB default charset = utf8 comment = '用户微博绑定';

-- 用户qq绑定表
create table `user_qq` (
    
) engine = InnoDB default charset = utf8 comment = '用户QQ绑定';

-- 用户github绑定表
create table `user_github` (

) engine = InnoDB default charset = utf8 comment = '用户github绑定';
