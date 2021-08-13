FROM programmingerror/ultroid:b0.1

#clonning repo 
COPY . .
RUN sh ultroid
RUN git clone https://github.com/teamultroid/ultroid.git /root/TeamUltroid
#ENV time zone

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /root/TeamUltroid
ENV PATH="/home/amanpandey/bin:$PATH"
CMD ["bash", "startup.sh"]
