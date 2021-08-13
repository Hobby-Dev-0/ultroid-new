FROM programmingerror/ultroid:b0.1

#clonning repo 
COPY . .
RUN sh ultroid

#working directory 

RUN wget -O /deploy/addons.txt https://git.io/JWdOk
RUN pip3 install --no-cache-dir -r /deploy/addons.txt

# start the bot
CMD ["bash", "resources/startup/startup.sh"]
WORKDIR /root/TeamUltroid
ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
