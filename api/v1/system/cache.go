/*
* @desc:缓存处理
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/2/1 18:12
 */

package system

import (
	"github.com/gogf/gf/v2/frame/g"
	commonApi "github.com/yyryydyyx/rs-admin/v3/api/v1/common"
)

type CacheRemoveReq struct {
	g.Meta `path:"/cache/remove" tags:"系统后台/缓存管理" method:"delete" summary:"清除缓存"`
	commonApi.Author
}

type CacheRemoveRes struct {
	commonApi.EmptyRes
}
