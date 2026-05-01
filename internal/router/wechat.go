package router

import (
	"context"

	"github.com/gogf/gf/v2/net/ghttp"
	wechat "github.com/yyryydyyx/rs-admin/v3/internal/app/wechat/router"
)

func (router *Router) BindWechatModuleController(ctx context.Context, group *ghttp.RouterGroup) {
	wechat.R.BindController(ctx, group)
}
