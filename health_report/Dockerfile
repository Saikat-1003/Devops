FROM rockylinux:9
 
RUN dnf install -y procps-ng coreutils util-linux && \
    dnf clean all
 
WORKDIR /app
COPY health_check.sh /app/health_check.sh
RUN chmod +x /app/health_check.sh
 
CMD ["/app/health_check.sh"]
