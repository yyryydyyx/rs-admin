/*
* @desc:代码生成
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2022/10/26 16:55
 */

package controller

import (
	"context"

	"github.com/gogf/gf/v2/errors/gerror"
	"github.com/gogf/gf/v2/os/gctx"
	"github.com/yyryydyyx/rs-admin/v3/api/v1/common"
	"github.com/yyryydyyx/rs-admin/v3/api/v1/system"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/model"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/model/entity"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/service"
)

var ToolsGenTable = new(toolsGenTableController)

type toolsGenTableController struct {
	BaseController
}

// DBList 获取数据库列表
func (c *toolsGenTableController) DBList(ctx context.Context, req *system.ToolsGenDBReq) (res *system.ToolsGenDBRes, err error) {
	res, err = service.ToolsGenTable().DBList(ctx, req)
	return
}

// List 获取表数据
func (c *toolsGenTableController) List(ctx context.Context, req *system.ToolsGenTableSearchReq) (res *system.ToolsGenTableSearchRes, err error) {
	res, err = service.ToolsGenTable().List(ctx, req)
	return
}

// GetImportTableList 获取要导入的数据表列表
func (c *toolsGenTableController) GetImportTableList(ctx context.Context, req *system.ToolsGenTableImportSearchReq) (res *system.ToolsGenTableSearchRes, err error) {
	res, err = service.ToolsGenTable().SelectDbTableList(ctx, req)
	return
}

// ImportTableSave 导入表结构数据操作
func (c *toolsGenTableController) ImportTableSave(ctx context.Context, req *system.ToolsGenTableImportTableReq) (res *common.EmptyRes, err error) {
	var tableList []*entity.ToolsGenTable
	tableList, err = service.ToolsGenTable().SelectDbTableListByNames(ctx, req.Tables, req.Group)
	if err != nil {
		return
	}
	if tableList == nil {
		err = gerror.New("表信息不存在")
		return
	}
	err = service.ToolsGenTable().ImportGenTable(ctx, tableList)
	return
}

// DeleteTable 删除已导入的表数据
func (c *toolsGenTableController) DeleteTable(ctx context.Context, req *system.ToolsGenTableDeleteReq) (res *common.EmptyRes, err error) {
	err = service.ToolsGenTable().DeleteTable(ctx, req)
	return
}

// GenColumnList 获取编辑页面返回数据
func (c *toolsGenTableController) GenColumnList(ctx context.Context, req *system.ToolsGenTableEditReq) (res *system.ToolsGenTableEditRes, err error) {
	res, err = service.ToolsGenTable().ColumnList(ctx, req)
	return
}

// RelationTable 获取关联表数据
func (c *toolsGenTableController) RelationTable(ctx context.Context, req *system.ToolsGenRelationTableReq) (res *system.ToolsGenRelationTableRes, err error) {
	res, err = service.ToolsGenTable().GetRelationTable(ctx, req)
	return
}

// EditSave 生成配置编辑保存
func (c *toolsGenTableController) EditSave(ctx context.Context, req *system.ToolsGenTableColumnsEditReq) (res *system.ToolsGenTableColumnsEditRes, err error) {
	err = service.ToolsGenTable().SaveEdit(ctx, req)
	return
}

// Preview 代码预览
func (c *toolsGenTableController) Preview(ctx context.Context, req *system.ToolsGenTablePreviewReq) (res *system.ToolsGenTablePreviewRes, err error) {
	res = new(system.ToolsGenTablePreviewRes)
	var extendData *model.ToolsGenTableEx
	res.Data, extendData, err = service.ToolsGenTable().GenData(ctx, req.TableId, nil)
	if err != nil {
		return
	}
	// 将extendData.AttachmentList中的每一项的Data与res.Data合并到一个map中
	if extendData.AttachmentList != nil && len(extendData.AttachmentList) > 0 {
		for _, attachment := range extendData.AttachmentList {
			if attachment.Data != nil && attachment.Attr != nil {
				for key, value := range attachment.Data {
					res.Data[key+attachment.Attr.ClassName] = value
				}
			}
		}
	}
	return
}

// BatchGenCode 代码生成
func (c *toolsGenTableController) BatchGenCode(ctx context.Context, req *system.ToolsGenTableBatchGenCodeReq) (res *system.ToolsGenTableBatchGenCodeRes, err error) {
	err = service.ToolsGenTable().GenCode(gctx.New(), req.Ids)
	return
}

func (c *toolsGenTableController) SyncTable(ctx context.Context, req *system.ToolsGenTableSyncTableReq) (res *system.ToolsGenTableSyncTableRes, err error) {
	err = service.ToolsGenTable().SyncTable(ctx, req.TableId)
	return
}
