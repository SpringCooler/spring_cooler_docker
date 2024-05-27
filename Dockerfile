# Amazon Corretto 17 이미지 사용
# api-0.0.1-SNAPSHOT.jar을 위한 Dockerfile
FROM amazoncorretto:17.0.11

CMD ["./gradlew", "clean", "build"]
# JAR 파일을 이미지에 복사
COPY api-0.0.1-SNAPSHOT.jar app.jar

# 컨테이너 시작 시 실행할 명령어 정의
ENTRYPOINT ["java", "-jar", "/app.jar"]
