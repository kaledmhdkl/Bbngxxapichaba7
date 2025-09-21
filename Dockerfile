# استخدم بايثون 3.11 (أو حسب اللي تحتاجه)
FROM python:3.11-slim

# إعداد مسار العمل
WORKDIR /app

# نسخ المتطلبات وتثبيتها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي المشروع
COPY . .

# تشغيل التطبيق
CMD ["python", "app.py"]
