/*
* @desc:测试登录小程序后才能访问
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/11/3 16:06
 */

package wechat

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/yyryydyyx/rs-admin/v3/api/v1/common"
)

type DemoReq struct {
	g.Meta `path:"/demo" tags:"微信接口/小程序测试" method:"get" summary:"测试"`
	common.Author
}

type DemoRes struct {
	common.EmptyRes
	Info string `json:"info"`
}
