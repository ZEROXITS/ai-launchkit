# استخدم نسخة Python مناسبة
FROM python:3.12-slim

# ضع مجلد العمل
WORKDIR /app

# انسخ كل الملفات للمجلد داخل الحاوية
COPY . .

# ثبّت المتطلبات
RUN pip install --no-cache-dir -r requirements.txt

# صدّر البورت الذي يستخدمه التطبيق
EXPOSE 7860

# شغّل التطبيق (تغيير الأمر حسب الملف الرئيسي في المشروع)
CMD ["python", "launch.py"]
