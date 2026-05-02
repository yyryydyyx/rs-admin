/*
* @desc:token功能
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2022/9/27 17:01
 */

package token

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gctx"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/common/consts"
	commonModel "github.com/yyryydyyx/rs-admin/v3/internal/app/common/model"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/service"
	"github.com/yyryydyyx/rs-admin/v3/library/liberr"
	"github.com/yyryydyyx/rs-token/adapter"
	"github.com/yyryydyyx/rs-token/gftoken"
)

type sToken struct {
	*gftoken.GfToken
}

func New() service.IGfToken {
	var (
		ctx = gctx.New()
		opt *commonModel.TokenOptions
		err = g.Cfg().MustGet(ctx, "gfToken").Struct(&opt)
		fun gftoken.OptionFunc
	)
	liberr.ErrIsNil(ctx, err)
	if opt.CacheModel == consts.CacheModelRedis {
		fun = gftoken.WithGRedis() //redis缓存
	} else if opt.CacheModel == consts.CacheModelDist {
		//磁盘缓存
		fun = gftoken.WithDistConfig(&adapter.Config{
			Dir: opt.DistPath,
		})
	} else {
		fun = gftoken.WithGCache() // 内存缓存
	}
	return &sToken{
		GfToken: gftoken.NewGfToken(
			gftoken.WithCacheKey(opt.CacheKey),
			gftoken.WithTimeout(opt.Timeout),
			gftoken.WithMaxRefresh(opt.MaxRefresh),
			gftoken.WithMultiLogin(opt.MultiLogin),
			gftoken.WithExcludePaths(opt.ExcludePaths),
			fun,
		),
	}
}

func init() {
	service.RegisterGToken(New())
}
