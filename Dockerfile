FROM programmingerror/ultroid:b0.1

#clonning repo 
COPY . .
RUN sh ultroid

#working directory 
WORKDIR /root/TeamUltroid

# Install requirements
RUN pip3 install -U -r https://raw.githubusercontent.com/TeamUltroid/Ultroid/main/requirements.txt
ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
