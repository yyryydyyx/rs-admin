/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-08-26 17:28:36
生成路径: resource/data/gen_sql/demo/demo_gen2_menu.sql
生成人：gfast
==========================================================================
*/


DO $$
DECLARE
  v_time timestamp := now();
  parentId integer;
BEGIN
-- 删除原有数据
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/list';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/get';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/add';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/edit';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/delete';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/export';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGen2/import';
-- 目录 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at )
VALUES(0,'api/v1/demo/demoGen2','代码生成测试表管理','iconfont icon-fuwenbenkuang','','代码生成测试表管理',0,0,1,0,'/demo/demoGen2','','layout/routerView/parent',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 菜单 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/list','代码生成测试表列表','ele-Fold','','代码生成测试表列表',1,0,1,0,'/demo/demoGen2/list','','demo/demoGen2/list/index',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 按钮 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/get','代码生成测试表查询','','','代码生成测试表查询',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/add','代码生成测试表添加','','','代码生成测试表添加',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/edit','代码生成测试表修改','','','代码生成测试表修改',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/delete','代码生成测试表删除','','','代码生成测试表删除',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGen2/export','代码生成测试表导出','','','代码生成测试表导出',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
  INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
  VALUES(parentId,'api/v1/demo/demoGen2/import','代码生成测试表导入','','','代码生成测试表导入',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
END;
$$;