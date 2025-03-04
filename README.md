# Spring Boot Eureka Discovery Service

This project is a simple Spring Boot application that acts as a Eureka Discovery Service.  Eureka is a service discovery solution, and this application provides a central registry for services in your microservices architecture.  Other microservices can register with this service and discover the locations of other services.

## Prerequisites

*   Java Development Kit (JDK) 8 or higher
*   Maven (version 3.6.0 or higher)
*   An IDE (e.g., IntelliJ IDEA, Eclipse, VS Code) is recommended but not required.

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone <your-repository-url>
    cd <your-project-directory>
    ```

2.  **Build the project using Maven:**

    ```bash
    mvn clean install
    ```

3.  **Run the application:**

    ```bash
    java -jar target/<your-application-name>.jar
    ```

    Alternatively, you can run the application directly from your IDE.

## Configuration

The application is configured through the `application.properties` or `application.yml` file located in the `src/main/resources` directory.

**Example `application.properties`:**

```properties
spring.application.name=eureka-discovery-service
server.port=8761

eureka.client.register-with-eureka=false
eureka.client.fetch-registry=false
eureka.client.service-url.defaultZone=http://localhost:${server.port}/eureka/