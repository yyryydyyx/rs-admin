/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-12-12 18:08:21
生成路径: resource/data/gen_sql/emp/emp_employee_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/emp/empEmployee/import';
-- 删除副表菜单数据
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/emp/empEmployee','员工信息表管理','iconfont icon-fuwenbenkuang','','员工信息表管理',0,0,1,0,'/emp/empEmployee','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/list','员工信息表列表','ele-Fold','','员工信息表列表',1,0,1,0,'/emp/empEmployee/list','','emp/empEmployee/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/get','员工信息表查询','','','员工信息表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/add','员工信息表添加','','','员工信息表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/edit','员工信息表修改','','','员工信息表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/delete','员工信息表删除','','','员工信息表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/emp/empEmployee/export','员工信息表导出','','','员工信息表导出',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
    INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
    VALUES(@parentId,'api/v1/emp/empEmployee/import','员工信息表导入','','','员工信息表导入',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
-- 副表按钮数据
