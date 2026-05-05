// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// SysAttachment is the golang structure of table sys_attachment for DAO operations like Where/Data.
type SysAttachment struct {
	g.Meta      `orm:"table:sys_attachment, do:true"`
	Id          interface{} // 文件ID
	AppId       interface{} // 应用ID
	Drive       interface{} // 上传驱动
	Name        interface{} // 文件原始名
	Kind        interface{} // 上传类型
	MimeType    interface{} // 扩展类型
	Path        interface{} // 本地路径
	Description interface{} // 文件描述
	Size        interface{} // 文件大小
	Ext         interface{} // 扩展名
	Md5         interface{} // md5校验码
	CreatedBy   interface{} // 上传人ID
	Status      interface{} // 状态
	CreatedAt   *gtime.Time // 创建时间
	UpdatedAt   *gtime.Time // 修改时间
}
