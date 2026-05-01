/*
==========================================================================
GFast自动生成菜单SQL
生成日期：2025-08-26 17:48:50
生成路径: resource/data/gen_sql/demo/demo_gen_class_menu.sql
生成人：gfast
==========================================================================
*/


DO $$
DECLARE
  v_time timestamp := now();
  parentId integer;
BEGIN
-- 删除原有数据
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/list';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/get';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/add';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/edit';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/delete';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/export';
DELETE FROM sys_auth_rule WHERE name = 'api/v1/demo/demoGenClass/import';
-- 目录 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at )
VALUES(0,'api/v1/demo/demoGenClass','代码生成关联测试表管理','iconfont icon-fuwenbenkuang','','代码生成关联测试表管理',0,0,1,0,'/demo/demoGenClass','','layout/routerView/parent',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 菜单 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/list','代码生成关联测试表列表','ele-Fold','','代码生成关联测试表列表',1,0,1,0,'/demo/demoGenClass/list','','demo/demoGenClass/list/index',0,'sys_admin',0,v_time,v_time) RETURNING id INTO parentId;
-- 按钮 SQL
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/get','代码生成关联测试表查询','','','代码生成关联测试表查询',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/add','代码生成关联测试表添加','','','代码生成关联测试表添加',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/edit','代码生成关联测试表修改','','','代码生成关联测试表修改',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/delete','代码生成关联测试表删除','','','代码生成关联测试表删除',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
VALUES(parentId,'api/v1/demo/demoGenClass/export','代码生成关联测试表导出','','','代码生成关联测试表导出',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
  INSERT INTO sys_auth_rule (pid,name,title,icon,condition,remark,menu_type,weigh,is_cached,is_hide,path,link_url,component,is_iframe,module_type,model_id,created_at,updated_at)
  VALUES(parentId,'api/v1/demo/demoGenClass/import','代码生成关联测试表导入','','','代码生成关联测试表导入',2,0,1,0,'','','',0,'sys_admin',0,v_time,v_time);
END;
$$;