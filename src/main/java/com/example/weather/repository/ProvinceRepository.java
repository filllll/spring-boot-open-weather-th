package com.example.weather.repository;

import com.example.weather.model.Province;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProvinceRepository extends JpaRepository<Province, Integer> {
    List<Province> getProvincesByZone(String zoneName);
    Province getProvinceByName(String provinceName);
}
