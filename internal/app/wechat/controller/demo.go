/*
* @desc:测试登录后才可以访问
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/11/3 16:05
 */

package controller

import (
	"context"

	"github.com/yyryydyyx/rs-admin/v3/api/v1/wechat"
)

var Demo = new(demoController)

type demoController struct {
	BaseController
}

func (c *demoController) Demo(ctx context.Context, req *wechat.DemoReq) (res *wechat.DemoRes, err error) {
	res = &wechat.DemoRes{Info: "hello word"}
	return
}
