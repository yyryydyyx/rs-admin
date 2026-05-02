/*
* @desc:缓存处理
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2022/9/27 16:33
 */

package cache

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gctx"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/common/consts"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/common/service"
	"github.com/yyryydyyx/rs-cache/adapter"
	"github.com/yyryydyyx/rs-cache/cache"
)

func init() {
	service.RegisterCache(New())
}

func New() service.ICache {
	var (
		ctx            = gctx.New()
		cacheContainer *cache.GfCache
	)
	prefix := g.Cfg().MustGet(ctx, "system.cache.prefix").String()
	model := g.Cfg().MustGet(ctx, "system.cache.model").String()
	distPath := g.Cfg().MustGet(ctx, "system.cache.distPath").String()
	if model == consts.CacheModelRedis {
		// redis
		cacheContainer = cache.NewRedis(prefix)
	} else if model == consts.CacheModelDist {
		// dist
		adapter.SetConfig(&adapter.Config{Dir: distPath})
		cacheContainer = cache.NewDist(prefix)
	} else {
		// memory
		cacheContainer = cache.New(prefix)
	}
	return &sCache{
		GfCache: cacheContainer,
		prefix:  prefix,
	}
}

type sCache struct {
	*cache.GfCache
	prefix string
}
