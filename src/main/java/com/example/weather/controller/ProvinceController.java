package com.example.weather.controller;

import com.example.weather.model.Province;
import com.example.weather.service.ProvinceService;
import com.example.weather.service.TransactionLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/provinces")
public class ProvinceController {

    ProvinceService provinceService;

    TransactionLogService transactionLogService;

    @Autowired
    public ProvinceController(ProvinceService provinceService, TransactionLogService transactionLogService) {
        this.provinceService = provinceService;
        this.transactionLogService = transactionLogService;
    }

    @RequestMapping("/all")
    public List<Province> getAllProvince() {
       return provinceService.getAllProvinces();
    }

    @RequestMapping("/zone")
    public List<Province> getProvincesByZone(@RequestParam("zoneName") String requestZone ) {
       return provinceService.getProvinceByZone(requestZone);
    }

    @RequestMapping("/province")
    public Province getProvinceByName(@RequestParam("provinceName") String requestProvince ) {
        return provinceService.getProvinceByName(requestProvince);
    }

}
