FROM ruby:3.0-slim

# نصب پیش‌نیازهای لازم برای BeEF
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*# کار در پوشه اصلی
WORKDIR /beef

# دانلود مستقیم BeEF از گیت‌هاب
RUN git clone https://github.com/beefproject/beef.git .
