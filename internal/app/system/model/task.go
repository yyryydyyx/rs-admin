/*
* @desc:定时任务
* @company:仁软科技成都有限公司
* @Author: yyr<252924@qq.com>
* @Date:   2023/1/13 17:47
 */

package model

import "context"

type TimeTask struct {
	FuncName string
	Param    []string
	Run      func(ctx context.Context)
}
