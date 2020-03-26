# spring-boot-open-weather-th
API for getting current weather of Thai provinces from OpenWeather API

## Technology Base
1. Java 8
2. Spring Boot
3. Docker

## How to use

### Installation
#### 1. Generate JAR file for docker
```bash
mvn install -DskipTests
```
#### 2. Run the docker compose
```bash
docker-compose up -d
```

### Weather Information

#### Get weather of all provinces
```
GET /core/all?apiKey={your_OpenWeather_api_key}
```
#### Get weather of northen provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=north
```
#### Get weather of northeastern provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=north-east
```
#### Get weather of center provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=center
```
#### Get weather of eastern provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=east
```
#### Get weather of western provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=west
```
#### Get weather of southern provinces
```
GET /core/zone?apiKey={your_OpenWeather_api_key}&&zoneName=south
```

### Province Information

#### Get all provinces
```
GET /provinces/all
```
#### Get northen provinces
```
GET /provinces/zone?zoneName=north
```
#### Get northeastern provinces
```
GET /provinces/zone?zoneName=north-east
```
#### Get center provinces
```
GET /provinces/zone?zoneName=center
```
#### Get eastern provinces
```
GET /provinces/zone?zoneName=east
```
#### Get western provinces
```
GET /provinces/zone?zoneName=west
```
#### Get southern provinces
```
GET /provinces/zone?zoneName=south
```

## Contributing
This is my first project on GitHub and I am new in Spring Boot and Docker Tech :D

Pull requests and any suggestions are very welcome.

## License
[MIT](https://choosealicense.com/licenses/mit/)
