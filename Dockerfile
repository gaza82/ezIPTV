FROM php:8.3-apache

# تفعيل module mod_rewrite لـApache (إذا احتجت لروابط نظيفة)
RUN a2enmod rewrite

# نسخ الملفات إلى مجلد الويب
COPY . /var/www/html/

# تعيين صلاحيات
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# المنفذ الافتراضي
EXPOSE 8080

# تشغيل Apache
CMD ["apache2-foreground"]
