# Tomcat 9 + JDK 17 (khớp môi trường bạn đang chạy local)
FROM tomcat:9-jdk17-temurin

# Xoá các app mẫu cho sạch (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy nguyên webapp của bạn vào ROOT (context path = "/")
COPY webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]
