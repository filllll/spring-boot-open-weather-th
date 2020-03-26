package com.example.weather.model;

import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "transaction_log")
public class TransactionLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "service_name")
    private String serviceName;

    @Column(name = "function_name")
    private String functionName;

    @Column(name = "detail")
    private String detail;

    @CreationTimestamp
    @Column(name = "create_datetime")
    private LocalDateTime createDateTime;

    public TransactionLog() {

    }

    public TransactionLog(String serviceName, String functionName, String detail) {
        this.serviceName = serviceName;
        this.functionName = functionName;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getFunctionName() {
        return functionName;
    }

    public void setFunctionName(String functionName) {
        this.functionName = functionName;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "TransactionLog{" +
                "id=" + id +
                ", serviceName='" + serviceName + '\'' +
                ", functionName='" + functionName + '\'' +
                ", detail='" + detail + '\'' +
                ", createDateTime=" + createDateTime +
                '}';
    }
}
