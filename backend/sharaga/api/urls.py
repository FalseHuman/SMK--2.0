from rest_framework import routers
from django.urls import path, include, re_path
from home.views import *
from tab.views import *

# Создаем router и регистрируем наш ViewSet
router = routers.SimpleRouter()

router.register(r'article', ArticleViewSet)
router.register(r'home', HomeViewSet)
router.register(r'tab', OneViewSet)
router.register(r'tabs_name', TwoViewSet)
router.register(r'callback', CallbackViewSet)

# URLs настраиваются автоматически роутером
urlpatterns = [
    path("", include(router.urls)),

]