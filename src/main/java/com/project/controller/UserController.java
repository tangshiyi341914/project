package com.project.controller;


import com.project.model.RespBean;
import com.project.model.RespPageBean;
import com.project.model.User;
import com.project.services.MenuService;
import com.project.services.UserService;
import com.project.utils.POIUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 基因重组
 * @since 2021-08-04
 */
@CrossOrigin
@RestController
@RequestMapping("/user/basic")
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    MenuService menuService;
    @PostMapping("/")
    public RespBean addUser(@RequestBody User user) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(user.getPassword()));
        if (userService.addUser(user) == 1) {
            return RespBean.ok("添加成功!");
        }
        return RespBean.error("添加失败!");
    }

    @DeleteMapping("/{id}")
    public RespBean deleteUserById(@PathVariable Integer id) {
        if (userService.deleteUserById(id) == 1 ) {
            return RespBean.ok("删除成功!");
        }
        return RespBean.error("删除失败!");
    }

    @PutMapping("/")
    public RespBean updateUser(@RequestBody User user) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(user.getPassword()));
        if (userService.updateUser(user) == 1) {
            return RespBean.ok("更新成功!");
        }
        return RespBean.error("更新失败!");
    }
    @RequestMapping("/")
    public RespPageBean getAllUsers(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer size, User user,Date[] beginDateScope)
    {
        return userService.getAllUsers(page, size, user, beginDateScope);
    }
    @GetMapping("/export")
    public ResponseEntity<byte[]> exportData() {
        List<User> list = (List<User>) userService.getAllUsers(null, null, new User(),null).getData();
        return POIUtils.user2Excel(list);
    }

    @PostMapping("/import")
    public RespBean importData(MultipartFile file) throws IOException {
        List<User> list = POIUtils.excel2User(file);
        if (userService.addUsers(list) == list.size()) {
            return RespBean.ok("上传成功");
        }
        return RespBean.error("上传失败");
    }
}

