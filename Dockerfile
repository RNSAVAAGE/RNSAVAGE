FROM ruby:3.0

# نصب پیش‌نیازها
RUN apt-get update && apt-get install -y git build-essential libsqlite3-dev

# دانلود BeEF
RUN git clone https://github.com/beefproject/beef.git /beef

WORKDIR /beef

# نصب پکیج‌ها
RUN bundle install

# کپی کردن فایل تنظیمات خودت
COPY config.yaml /beef/config.yaml

# باز کردن پورت
EXPOSE 3000

# دستور اجرا
CMD ["./beef", "-c", "config.yaml"]
