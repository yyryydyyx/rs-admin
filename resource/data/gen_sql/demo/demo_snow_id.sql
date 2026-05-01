/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-07-01 21:33:54
生成路径: resource/data/gen_sql/demo/demo_snow_id_menu.sql
生成人：gfast
==========================================================================
*/


DO $$
DECLARE
  v_time timestamp := now();
  parentId integer;
BEGIN
-- 删除原有数据
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/list';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/get';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/add';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/edit';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/delete';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/export';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoSnowId/import';
-- 目录 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at )
VALUES(0,'api/v1/demo/demoSnowId','雪花ID测试管理','iconfont icon-fuwenbenkuang','','雪花ID测试管理',0,0,1,0,'/demo/demoSnowId','','layout/routerView/parent',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 菜单 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/list','雪花ID测试列表','ele-Fold','','雪花ID测试列表',1,0,1,0,'/demo/demoSnowId/list','','demo/demoSnowId/list/index',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 按钮 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/get','雪花ID测试查询','','','雪花ID测试查询',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/add','雪花ID测试添加','','','雪花ID测试添加',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/edit','雪花ID测试修改','','','雪花ID测试修改',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/delete','雪花ID测试删除','','','雪花ID测试删除',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoSnowId/export','雪花ID测试导出','','','雪花ID测试导出',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
  INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
  VALUES(parentId,'api/v1/demo/demoSnowId/import','雪花ID测试导入','','','雪花ID测试导入',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
END;
$$;