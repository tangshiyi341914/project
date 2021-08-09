package com.project.controller;


import com.project.model.Listing;
import com.project.model.RespBean;
import com.project.services.impl.ListingServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author 基因重组
 * @since 2021-08-04
 */
@RestController
@RequestMapping("/list")
@Api(value = "挂牌摘牌的控制器",description = "关于挂摘牌，管理员审核的控制器")
public class ListingController {
    @Autowired
    private ListingServiceImpl listingService;

    @GetMapping("/all")
    @ApiOperation("返回所有订单信息，不论状态，不论买卖")
    public RespBean getList() {
        System.out.println("进入/list/all");
//        listService.
        List<Listing> list = listingService.selectList();
        System.out.println(list);
        return RespBean.ok("已经获取到所有订单信息！", list);
    }

    @ApiOperation("current:当前页，" +
            "size:一页显示的数据数量(-1表示查询全部)" +
            "identity:0是买家发布的单子，1是卖家发布的单子,2是都查看。" +
            "对象传入")
    @PostMapping("/page")
    public RespBean identityPage(@RequestBody Map<String, Object> map) {
        System.out.println("identityPage begin");
        int current = (int) map.get("current");
        int size = (int) map.get("size");
        int identity = (int) map.get("identity");

        return RespBean.ok("已经获取到指定订单信息！", listingService.selectListPage(current, size, identity));
    }

    @ApiOperation("current:当前页，" +
            "size:一页显示的数据数量(-1表示查询全部)" +
            "status:0待审核1，1是已驳回，2是审核通过，3是交易完成，4是全部。" +
            "对象传入")
    @PostMapping("/status")
    public RespBean statusPage(@RequestBody Map<String, Object> map) {
        System.out.println("statusPage begin");
        int current = (int) map.get("current");
        int size = (int) map.get("size");
        int status = (int) map.get("status");
        return RespBean.ok("已经获取到指定订单信息！", listingService.selectListStatus(current, size, status));
    }

    @ApiOperation("传入一个需要新增的牌对象")
    @PostMapping("/add")
    public RespBean addListing(@RequestBody Listing listing) {
        if (listingService.insert(listing) > 0) {
            return RespBean.ok("挂牌信息提交成功，等待管理员审核");
        } else {
            return RespBean.error("挂牌失败");
        }
    }

    @ApiOperation("传入一个牌的no，这个牌会被管理员审核通过")
    @GetMapping("/permit")
    public RespBean permit(@RequestParam("no") int no) {
        System.out.println("编号为" + no + "的将被审核通过");
        //先判断下，是否有权限访问
        if (listingService.setStatus(no, 2) > 0) {
            return RespBean.ok("审核成功");
        } else {
            return RespBean.error("审核失败");
        }
    }

    @ApiOperation("传入一个牌的no，这个牌会被管理员审核驳回")
    @GetMapping("/reject")
    public RespBean reject(@RequestParam("no") int no) {
        System.out.println("编号为" + no + "的将被驳回");
        //先判断下，是否有权限访问
        if (listingService.setStatus(no, 1) > 0) {
            return RespBean.ok("驳回成功");
        } else {
            return RespBean.error("驳回失败");
        }
    }

    @ApiOperation("传入一个牌的no，这个牌会被管理员删除")
    @GetMapping("/delete")
    public RespBean delete(@RequestParam("no") int no) {
        System.out.println("编号为" + no + "的将被删除");
        //先判断下，是否有权限访问
        if (listingService.delete(no) > 0) {
            return RespBean.ok("删除成功");
        } else {
            return RespBean.error("删除失败");
        }
    }

    @ApiOperation("传入要购买的订单编号:no，和买家的账号:id")
    @PostMapping("/buy")
    public RespBean buy(@RequestBody Map<String, Object> map) {
        int no = (int) map.get("no");
        int id = (int) map.get("id");
        listingService.setStatus(no, 3);//交易成功
        //这个信息应该被存入order表
        return RespBean.ok("这里是 list");
    }

    @ApiOperation("查询指定的牌，传入一个条件map")
    @PostMapping("/select")
    public RespBean select(@RequestBody Map<String, Object> map) {
        List<Listing> select = listingService.select(map);
        return RespBean.ok("共"+select.size()+"条搜索结果",select );
    }
}

