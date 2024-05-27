# 베이스 이미지 설정
FROM prom/prometheus:latest

# 로컬 파일 시스템에서 컨테이너로 파일 복사
COPY k8s/prometheus-config.yaml /etc/prometheus/prometheus.yml

# Prometheus의 기본 포트는 9090이므로, EXPOSE는 선택사항입니다.
EXPOSE 9090

# 컨테이너 시작 시 실행할 명령어
CMD ["--config.file=/etc/prometheus/prometheus.yml"]