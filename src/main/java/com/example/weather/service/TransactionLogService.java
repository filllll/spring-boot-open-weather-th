package com.example.weather.service;

import com.example.weather.model.TransactionLog;
import com.example.weather.repository.TransactionLogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransactionLogService {

    TransactionLogRepository transactionLogRepository;

    public TransactionLogService() {}

    @Autowired
    public TransactionLogService(TransactionLogRepository transactionLogRepository) {
        this.transactionLogRepository = transactionLogRepository;
    }

    public void saveLog(String serviceName, String functionName, String detail) {
        transactionLogRepository.save(new TransactionLog(serviceName, functionName, detail));
    }
}
