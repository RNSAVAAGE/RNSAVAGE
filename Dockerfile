FROM beefproject/beef:latest

# کپی کردن فایل تنظیمات از گیت‌هاب به داخل کانتینر
COPY config.yaml /config.yaml

# دستور برای اجرا با استفاده از فایل تنظیمات جدید
CMD ["./beef", "-c", "/config.yaml"]
