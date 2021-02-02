from django.contrib import admin

from .models import *

admin.site.register(Contacts)
admin.site.register(Hotline)
admin.site.register(Controls)
admin.site.register(Callback)
admin.site.register(Director)

admin.site.site_title = "Салаватский медицинский колледж"
admin.site.site_header = "Салаватский медицинский колледж"
