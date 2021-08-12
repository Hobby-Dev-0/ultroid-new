FROM programmingerror/ultroid:b0.1

#clonning repo 
COPY . .
RUN sh ultroid

#working directory 
WORKDIR /root/TeamUltroid

# Install requirements
RUN pip3 install -U -r requirements.txt
ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
