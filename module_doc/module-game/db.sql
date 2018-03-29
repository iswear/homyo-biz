-- 截图表
create table `image_clip` (

) engine = innodb default charset = utf8 comment = '图片片段表';

-- 模型表
create table `sprite` (

) engine = innodb default charset = utf8 comment = '精灵表';

-- 脚本表
create table `script` (

) engine = innodb default charset = utf8 comment = '脚本表';

-- 地图表
create table `map` (

) engine = innodb default charset = utf8 comment = '地图表';

-- npc表
create table `npc` (

) engine = innodb default charset = utf8 comment = 'npc表';

-- npc挂载脚本表
create table `npc_script` (

) engine = innodb default charset = utf8 comment = 'npc挂载脚本';