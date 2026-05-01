/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2024-04-07 10:46:39
生成路径: resource/data/gen_sql/demo/demo_city_code_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoCityCode/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/demoCityCode','省市区县管理','iconfont icon-fuwenbenkuang','','省市区县管理',0,0,1,0,'/demo/demoCityCode','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoCityCode/list','省市区县列表','ele-Fold','','省市区县列表',1,0,1,0,'/demo/demoCityCode/list','','demo/demoCityCode/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoCityCode/get','省市区县查询','','','省市区县查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoCityCode/add','省市区县添加','','','省市区县添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoCityCode/edit','省市区县修改','','','省市区县修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoCityCode/delete','省市区县删除','','','省市区县删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
