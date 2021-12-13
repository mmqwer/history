package com.lu.controller;

import com.alibaba.fastjson.JSONObject;
import com.lu.utils.OkHttpApi;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class HistoryController {

    @RequestMapping("/j1")
    public String json1() throws IOException {
        OkHttpApi api = new OkHttpApi();
        String run = api.run("http://v.juhe.cn/todayOnhistory/queryEvent.php?date=8%2F11&key=1f72f4d53b576dd033fa0e16133aaed1");
        JSONObject jsonObject = JSONObject.parseObject(run);
        String result = jsonObject.getString("result");
        return result;
    }

}
