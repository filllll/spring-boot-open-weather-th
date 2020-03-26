package com.example.weather.controller;

import com.example.weather.service.CoreService;
import com.example.weather.service.ProvinceService;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/core")
public class CoreController {

    ProvinceService provinceService;

    CoreService coreService;

    @Autowired
    public CoreController(ProvinceService provinceService, CoreService coreService) {
        this.provinceService = provinceService;
        this.coreService = coreService;
    }

    @RequestMapping("/all")
    public List<JSONObject> getAllCurrentWeather() {
        return coreService.getWeathersFromAPI(provinceService.getAllProvinces());
    }

    @RequestMapping("/zone")
    public List<JSONObject> getWeathersByZone(@RequestParam(name = "zone") String zone) {
        return coreService.getWeathersFromAPI(provinceService.getProvinceByZone(zone));
    }


}
