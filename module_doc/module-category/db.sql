-- 分类表
create table `category` (

) engine = InnoDB default charset = utf8 comment = '分类表';

-- 属性表
create table `property` (

) engine = InnoDB default charset = utf8 comment = '属性表';

-- 属性值表
create table `property_value` (

) engine = InnoDB default charset = utf8 comment = '属性值表';

-- 属性分表
create table `category_property` (

) engine = InnoDB default charset = utf8 comment = '分类属性关系表';