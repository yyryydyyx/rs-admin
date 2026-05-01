/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-12-15 08:59:54
生成路径: resource/data/gen_sql/emp/emp_position_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empPosition/import';
-- 删除副表菜单数据
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/emp/empPosition','职位表管理','iconfont icon-fuwenbenkuang','','职位表管理',0,0,1,0,'/emp/empPosition','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/list','职位表列表','ele-Fold','','职位表列表',1,0,1,0,'/emp/empPosition/list','','emp/empPosition/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/get','职位表查询','','','职位表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/add','职位表添加','','','职位表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/edit','职位表修改','','','职位表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/delete','职位表删除','','','职位表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empPosition/export','职位表导出','','','职位表导出',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
    INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
    VALUES(@parentId,'api/v1/emp/empPosition/import','职位表导入','','','职位表导入',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
-- 副表按钮数据
