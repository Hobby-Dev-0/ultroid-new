FROM programmingerror/ultroid:b0.1

#clonning repo 
COPY . .
RUN sh ultroid

#ENV time zone

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /root/TeamUltroid
ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
