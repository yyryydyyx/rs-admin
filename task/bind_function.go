/*
* @desc:定时任务配置
* @company:云南省奇讯科技有限公司
* @Author: yixiaohu
* @Date:   2021/7/16 15:45
 */

package task

import (
	"context"

	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/os/gctx"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/model"
	"github.com/yyryydyyx/rs-admin/v3/internal/app/system/service"
	"github.com/yyryydyyx/rs-admin/v3/internal/mounter"
)

func init() {
	mounter.Mount(func(ctx context.Context, s *ghttp.Server) {
		Run()
	})
}

func Run() {
	task1 := &model.TimeTask{
		FuncName: "test1",
		Run:      Test1,
	}
	task2 := &model.TimeTask{
		FuncName: "test2",
		Run:      Test2,
	}
	checkUserOnlineTask := &model.TimeTask{
		FuncName: "checkUserOnline",
		Run:      service.SysUserOnline().CheckUserOnline,
	}
	service.TaskList().AddTask(task1)
	service.TaskList().AddTask(task2)
	service.TaskList().AddTask(checkUserOnlineTask)
	ctx := gctx.New()
	//自动执行已开启的任务
	jobs, err := service.SysJob().GetJobs(ctx)
	if err != nil {
		g.Log().Error(ctx, err)
		return
	}
	for _, job := range jobs {
		service.SysJob().JobStart(ctx, job)
	}
	//检查任务是否启动，未启动则重新启动
	service.SysJob().CheckTask(ctx)
}
