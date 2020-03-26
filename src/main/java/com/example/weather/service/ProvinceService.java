package com.example.weather.service;

import com.example.weather.model.Province;
import com.example.weather.repository.ProvinceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProvinceService {

    ProvinceRepository provinceRepository;

    TransactionLogService transactionLogService;

    public ProvinceService() {}

    @Autowired
    public ProvinceService(ProvinceRepository provinceRepository, TransactionLogService transactionLogService) {
        this.provinceRepository = provinceRepository;
        this.transactionLogService = transactionLogService;
    }

    public List<Province> getAllProvinces() {

        List<Province> result = provinceRepository.findAll();

        transactionLogService.saveLog("ProvinceService", "getAllProvinces", "Result:" + result.toString());

        return result;
    }

    public List<Province> getProvinceByZone(String zoneName) {

        List<Province> result = provinceRepository.getProvincesByZone(zoneName);

        transactionLogService.saveLog("ProvinceService", "getProvinceByZone", "Result:" + result.toString());

        return result;
    }

    public Province getProvinceByName(String name) {

        Province result = provinceRepository.getProvinceByName(name);

        transactionLogService.saveLog("ProvinceService", "getProvinceByName", "Result:" + result.toString());

        return result;
    }

}
