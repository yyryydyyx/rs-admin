/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-09-11 18:25:37
生成路径: resource/data/gen_sql/demo/emp_department_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empDepartment/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/empDepartment','部门信息表管理','iconfont icon-fuwenbenkuang','','部门信息表管理',0,0,1,0,'/demo/empDepartment','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empDepartment/list','部门信息表列表','ele-Fold','','部门信息表列表',1,0,1,0,'/demo/empDepartment/list','','demo/empDepartment/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empDepartment/get','部门信息表查询','','','部门信息表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empDepartment/add','部门信息表添加','','','部门信息表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empDepartment/edit','部门信息表修改','','','部门信息表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empDepartment/delete','部门信息表删除','','','部门信息表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
