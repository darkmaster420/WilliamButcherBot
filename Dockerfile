FROM williambutcherbot/python:latest

WORKDIR /wbb
RUN chmod 777 /wbb

# Installing Requirements
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt

# If u want to use /update feature, uncomment the following and edit
RUN git config --global user.email "esquerhumberto49@gmail.com"
RUN git config --global user.name "darkmaster420"

# Copying All Source
COPY . .

# Starting Bot
CMD ["python3", "-m", "wbb"]
