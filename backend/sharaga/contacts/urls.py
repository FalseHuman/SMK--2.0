from rest_framework import routers
from django.urls import path, include
from .views import ContactsViewSet, HotlineViewSet, ControlsViewSet, CallbackViewSet, DirectorViewSet

# Создаем router и регистрируем наш ViewSet
router = routers.SimpleRouter()
router.register(r'contacts', ContactsViewSet)
router.register(r'hotline', HotlineViewSet)
router.register(r'controls', ControlsViewSet)
router.register(r'callback', CallbackViewSet)
router.register(r'director', DirectorViewSet)

# URLs настраиваются автоматически роутером
urlpatterns = [
    path("", include(router.urls)),
]