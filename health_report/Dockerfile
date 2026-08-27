FROM rockylinux:9
 
RUN dnf install -y procps-ng
RUN dnf clean all
 
WORKDIR /app
#COPY health_check.sh /app/health_check.sh
COPY health_check_v2.sh /app/health_check_v2.sh

RUN chmod +x /app/health_check_v2.sh
 
CMD ["/app/health_check_v2.sh"]
