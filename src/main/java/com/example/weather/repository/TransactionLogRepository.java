package com.example.weather.repository;

import com.example.weather.model.Province;
import com.example.weather.model.TransactionLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionLogRepository extends JpaRepository<TransactionLog, Integer> {

}
