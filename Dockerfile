FROM beefproject/beef:latest

# کپی کردن فایل تنظیمات از گیت‌هاب به مسیر اصلی BeEF
COPY config.yaml /beef/config.yaml

# تغییر مسیر اجرا برای استفاده از فایل تنظیمات جدید
CMD ["./beef", "-c", "/beef/config.yaml"]
