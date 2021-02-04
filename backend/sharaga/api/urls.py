from rest_framework import routers
from django.urls import path, include
from contacts.views import *
from teachers.views import *
from students.views import *

# Создаем router и регистрируем наш ViewSet
router = routers.SimpleRouter()
router.register(r'contacts', ContactsViewSet)
router.register(r'hotline', HotlineViewSet)
router.register(r'controls', ControlsViewSet)
router.register(r'callback', CallbackViewSet)
router.register(r'director', DirectorViewSet)
router.register(r'info', InfoViewSet)
router.register(r'educationalandmethodicalwork', EducationalandMethodicalWorkViewSet)
router.register(r'additionaleducation', AdditionalEducationViewSet)
router.register(r'seminars', SeminarsViewSet)
router.register(r'certification', CertificationViewSet)
router.register(r'callbackeducation', CallbackEducationViewSet)
router.register(r'students', StudentsViewSet)
# URLs настраиваются автоматически роутером
urlpatterns = [
    path("", include(router.urls)),
]