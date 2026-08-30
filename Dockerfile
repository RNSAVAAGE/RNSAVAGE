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
# نصب وابستگی‌های Ruby
RUN gem install bundler && bundle install

# کپی کردن فایل تنظیمات خودت (که پسورد تو روش هست)
COPY config.yaml /beef/config.yaml

# باز کردن پورت ۳۰۰۰
EXPOSE 3000

# دستور اجرا
CMD ["./beef", "-c", "/beef/config.yaml"]
