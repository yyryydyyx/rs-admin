/*
* @desc:ping
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/11/30 15:59
 */

package controller

import (
	"github.com/yyryydyyx/rs-admin/v3/library/libWebsocket"
)

var Ping = new(pingController)

type pingController struct{}

func (c *pingController) Ping(client *libWebsocket.Client, req *libWebsocket.WRequest) {
	libWebsocket.SendSuccess(client, req.Event)
}
