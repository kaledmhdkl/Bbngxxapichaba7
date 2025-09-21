# استخدم بايثون 3.11 (ممكن تغيّره لو كودك يحتاج إصدار آخر)
FROM python:3.11-slim

# إعداد مسار العمل
WORKDIR /app

# نسخ requirements.txt وتثبيت المكتبات
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي المشروع
COPY . .

# تشغيل التطبيق
CMD ["python", "app.py"]
