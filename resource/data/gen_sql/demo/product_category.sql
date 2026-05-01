/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2024-04-07 10:46:35
生成路径: resource/data/gen_sql/demo/product_category_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/productCategory/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/productCategory','商品分类表管理','iconfont icon-fuwenbenkuang','','商品分类表管理',0,0,1,0,'/demo/productCategory','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/productCategory/list','商品分类表列表','ele-Fold','','商品分类表列表',1,0,1,0,'/demo/productCategory/list','','demo/productCategory/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/productCategory/get','商品分类表查询','','','商品分类表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/productCategory/add','商品分类表添加','','','商品分类表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/productCategory/edit','商品分类表修改','','','商品分类表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/productCategory/delete','商品分类表删除','','','商品分类表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
