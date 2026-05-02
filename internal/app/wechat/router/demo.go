/*
* @desc:xxxx功能描述
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/11/3 16:23
 */

package router

import (
	"context"

	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/wechat/controller"
)

func (router *Router) BindDemoController(ctx context.Context, group *ghttp.RouterGroup) {
	group.Group("/demo", func(group *ghttp.RouterGroup) {
		group.Bind(
			controller.Demo,
		)
	})
}
