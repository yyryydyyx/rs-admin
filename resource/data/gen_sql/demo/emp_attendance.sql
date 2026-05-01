/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-09-18 14:48:56
生成路径: resource/data/gen_sql/demo/emp_attendance_menu.sql
生成人：gfast
==========================================================================
*/


-- 删除原有数据
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/list';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/get';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/add';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/edit';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/delete';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/export';
DELETE FROM `sys_auth_rule` WHERE `name` = 'api/v1/demo/empAttendance/import';
-- 当前日期
select @now := now();
-- 目录 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at` )
VALUES(0,'api/v1/demo/empAttendance','员工考勤记录表管理','iconfont icon-fuwenbenkuang','','员工考勤记录表管理',0,0,1,0,'/demo/empAttendance','','layout/routerView/parent',0,'sys_admin',0,@now,@now);
-- 菜单父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 菜单 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empAttendance/list','员工考勤记录表列表','ele-Fold','','员工考勤记录表列表',1,0,1,0,'/demo/empAttendance/list','','demo/empAttendance/list/index',0,'sys_admin',0,@now,@now);
-- 按钮父目录ID
SELECT @parentId := LAST_INSERT_ID();
-- 按钮 SQL
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empAttendance/get','员工考勤记录表查询','','','员工考勤记录表查询',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empAttendance/add','员工考勤记录表添加','','','员工考勤记录表添加',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empAttendance/edit','员工考勤记录表修改','','','员工考勤记录表修改',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
INSERT INTO `sys_auth_rule` (`pid`,`name`,`title`,`icon`,`condition`,`remark`,`menu_type`,`weigh`,`is_cached`,`is_hide`,`path`,`link_url`,`component`,`is_iframe`,`module_type`,`model_id`,`created_at`,`updated_at`)
VALUES(@parentId,'api/v1/demo/empAttendance/delete','员工考勤记录表删除','','','员工考勤记录表删除',2,0,1,0,'','','',0,'sys_admin',0,@now,@now);
