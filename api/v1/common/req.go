/*
* @desc:公共接口相关
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2022/3/30 9:28
 */

package common

import "github.com/yyryydyyx/rs-admin/v3/internal/app/common/model"

// PageReq 公共请求参数
type PageReq struct {
	model.PageReq
}

type Author struct {
	Authorization string `p:"Authorization" in:"header" dc:"Bearer {{token}}"`
}
