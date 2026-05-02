/*
* @desc:部门model
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2022/4/11 9:07
 */

package model

import (
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/model/entity"
)

type SysDeptTreeRes struct {
	*entity.SysDept
	Children []*SysDeptTreeRes `json:"children"`
}

type LinkDeptRes struct {
	DeptId   uint64 `json:"deptId"`
	DeptName string `json:"deptName"`
}
