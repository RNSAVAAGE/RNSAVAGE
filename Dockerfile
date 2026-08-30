FROM node:18-slim

RUN apt-get update && apt-get install -y \
    git \
    curl \
    python3 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/beefexploit/beef.git .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
