/*
* @desc:system base controller
* @company:仁软科技成都有限公司
* @Author: yixiaohu
* @Date:   2022/3/4 18:12
 */

package controller

import (
	"github.com/gogf/gf/v2/net/ghttp"
	commonController "github.com/yyryydyyx/rs-admin/v3/internal/app/common/controller"
)

type BaseController struct {
	commonController.BaseController
}

// Init 自动执行的初始化方法
func (c *BaseController) Init(r *ghttp.Request) {
	c.BaseController.Init(r)
}
