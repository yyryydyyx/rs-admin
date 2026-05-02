/*
* @desc:xxxx功能描述
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2024/3/15 10:53
 */

package entity

type OverwriteInfo struct {
	Key   string `json:"key"`
	Value bool   `json:"value"`
}

type Attachments struct {
	TableId      int64    `json:"tableId"`
	TableName    string   `json:"tableName"`
	ForeignKey   string   `json:"foreignKey"`
	PrimaryKey   string   `json:"primaryKey"`
	ParentTable  []string `json:"parentTable"`
	BusinessName string   `json:"businessName"`
}
