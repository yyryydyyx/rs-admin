/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-12-15 08:59:54
生成路径: resource/data/gen_sql/emp/emp_department_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empDepartment/import';
-- 删除副表菜单数据
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/emp/empDepartment','部门表管理','iconfont icon-fuwenbenkuang','','部门表管理',0,0,1,0,'/emp/empDepartment','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/list','部门表列表','ele-Fold','','部门表列表',1,0,1,0,'/emp/empDepartment/list','','emp/empDepartment/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/get','部门表查询','','','部门表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/add','部门表添加','','','部门表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/edit','部门表修改','','','部门表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/delete','部门表删除','','','部门表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empDepartment/export','部门表导出','','','部门表导出',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
    INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
    VALUES(@parentId,'api/v1/emp/empDepartment/import','部门表导入','','','部门表导入',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
-- 副表按钮数据
