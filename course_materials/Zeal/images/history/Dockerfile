# FROM ubuntu

# RUN dd if=/dev/zero of=/root/file1.txt bs=1M count=100

# RUN dd if=/dev/zero of=/root/file2.txt bs=1M count=100

# RUN rm -f /root/file1.txt

# RUN rm -f /root/file2.txt

FROM ubuntu

RUN dd if=/dev/zero of=/root/file1.txt bs=1M count=100 \
    && dd if=/dev/zero of=/root/file2.txt bs=1M count=100 \
    && rm -f /root/file1.txt \
    && rm -f /root/file2.txt
