/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2024-05-07 10:08:03
生成路径: resource/data/gen_sql/demo/demo_data_auth_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoDataAuth/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/demoDataAuth','数据权限测试管理','iconfont icon-fuwenbenkuang','','数据权限测试管理',0,0,1,0,'/demo/demoDataAuth','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoDataAuth/list','数据权限测试列表','ele-Fold','','数据权限测试列表',1,0,1,0,'/demo/demoDataAuth/list','','demo/demoDataAuth/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoDataAuth/get','数据权限测试查询','','','数据权限测试查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoDataAuth/add','数据权限测试添加','','','数据权限测试添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoDataAuth/edit','数据权限测试修改','','','数据权限测试修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoDataAuth/delete','数据权限测试删除','','','数据权限测试删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
