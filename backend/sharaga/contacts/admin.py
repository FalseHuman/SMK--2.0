from django.contrib import admin

from .models import Contacts, Controls, Hotline, Callback, Director

admin.site.register(Contacts)
admin.site.register(Hotline)
admin.site.register(Controls)
admin.site.register(Callback)
admin.site.register(Director)

