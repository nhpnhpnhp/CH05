# Sử dụng Tomcat 9 chạy trên JDK 17 (Temurin)
FROM tomcat:9.0-jdk17-temurin

# Xoá webapp mặc định để giữ container sạch
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ ứng dụng của bạn (webapp) vào ROOT
# Giả sử thư mục webapp/ chứa WEB-INF, JSP, static, v.v.
COPY webapp/ /usr/local/tomcat/webapps/ROOT/

# Mở cổng 8080 để truy cập
EXPOSE 8080

# Chạy Tomcat ở chế độ foreground
CMD ["catalina.sh", "run"]
