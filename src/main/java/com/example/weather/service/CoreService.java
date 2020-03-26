package com.example.weather.service;

import com.example.weather.model.Province;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

@Service
public class CoreService {

    TransactionLogService transactionLogService;

    public CoreService() {}

    @Autowired
    public CoreService(TransactionLogService transactionLogService) {
        this.transactionLogService = transactionLogService;
    }

    public List<JSONObject> getWeathersFromAPI(List<Province> provinces) {

        List<JSONObject> weathers = new ArrayList<>();
        try {
            for (Province province : provinces) {

                String url = "http://api.openweathermap.org/data/2.5/weather/";
                String charset = "UTF-8";  // Or in Java 7 and later, use the constant: java.nio.charset.StandardCharsets.UTF_8.name()
                String province_id = province.getApiId();
                String apiKey = "3d338ab42f85989386cfe264d5367ed9";

                String query = String.format("id=%s&appid=%s",
                        URLEncoder.encode(province_id, charset),
                        URLEncoder.encode(apiKey, charset));

                URLConnection connection = new URL(url + "?" + query).openConnection();
                connection.setRequestProperty("Accept-Charset", charset);
                InputStream response = connection.getInputStream();

                Scanner scanner = new Scanner(response);
                String responseBody = scanner.useDelimiter("\\A").next();
                JSONParser parser = new JSONParser();
                JSONObject json = (JSONObject) parser.parse(responseBody);
                System.out.println(json);
                weathers.add(json);

            }

        } catch (Exception e) {
            e.printStackTrace();
            transactionLogService.saveLog("CoreService", "getWeathersFromAPI", "Error:" + e.toString());
        }

        transactionLogService.saveLog("CoreService", "getWeatherFromAPI", "Result:" + weathers.toString());

        return weathers;
    }

}
