/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2024-07-29 08:45:43
生成路径: resource/data/gen_sql/demo/demo_gen_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/demoGen/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/demoGen','代码生成测试表管理','iconfont icon-fuwenbenkuang','','代码生成测试表管理',0,0,1,0,'/demo/demoGen','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/list','代码生成测试表列表','ele-Fold','','代码生成测试表列表',1,0,1,0,'/demo/demoGen/list','','demo/demoGen/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/get','代码生成测试表查询','','','代码生成测试表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/add','代码生成测试表添加','','','代码生成测试表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/edit','代码生成测试表修改','','','代码生成测试表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/delete','代码生成测试表删除','','','代码生成测试表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/demoGen/export','代码生成测试表导出','','','代码生成测试表导出',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
    INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
    VALUES(@parentId,'api/v1/demo/demoGen/import','代码生成测试表导入','','','代码生成测试表导入',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
