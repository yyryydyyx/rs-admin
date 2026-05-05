// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// SysAttachment is the golang structure for table sys_attachment.
type SysAttachment struct {
	Id          int64       `json:"id"          orm:"id"          description:"文件ID"`
	AppId       string      `json:"appId"       orm:"app_id"      description:"应用ID"`
	Drive       string      `json:"drive"       orm:"drive"       description:"上传驱动"`
	Name        string      `json:"name"        orm:"name"        description:"文件原始名"`
	Kind        string      `json:"kind"        orm:"kind"        description:"上传类型"`
	MimeType    string      `json:"mimeType"    orm:"mime_type"   description:"扩展类型"`
	Path        string      `json:"path"        orm:"path"        description:"本地路径"`
	Description string      `json:"description" orm:"description" description:"文件描述"`
	Size        int64       `json:"size"        orm:"size"        description:"文件大小"`
	Ext         string      `json:"ext"         orm:"ext"         description:"扩展名"`
	Md5         string      `json:"md5"         orm:"md5"         description:"md5校验码"`
	CreatedBy   int64       `json:"createdBy"   orm:"created_by"  description:"上传人ID"`
	Status      int         `json:"status"      orm:"status"      description:"状态"`
	CreatedAt   *gtime.Time `json:"createdAt"   orm:"created_at"  description:"创建时间"`
	UpdatedAt   *gtime.Time `json:"updatedAt"   orm:"updated_at"  description:"修改时间"`
}
