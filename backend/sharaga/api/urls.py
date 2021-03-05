from rest_framework import routers
from django.urls import path, include, re_path
from contacts.views import *
from teachers.views import *
from students.views import *
from info.views import *
from abiturents.views import *
from distancelearning.views import *
from groups.views import *
from home.views import *
from tab.views import *

# Создаем router и регистрируем наш ViewSet
router = routers.SimpleRouter()
router.register(r'article', ArticleViewSet)
router.register(r'home', HomeViewSet)
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
router.register(r'info', InfoViewSet)
router.register(r'abiturents', AbiturentsViewSet)
router.register(r'distance', DistanceViewSet)
router.register(r'shedule', SheduleViewSet)
router.register(r'feldhers', FeldhersViewSet)
router.register(r'nurses', NursesViewSet)
router.register(r'obstetrician', ObstetricianViewSet)
router.register(r'obstetricians', ObstetricianDistanceViewSet)
router.register(r'feldher', FeldhersDistanceViewSet)
router.register(r'nurs', NursesDistanceViewSet)
router.register(r'predmets', PredmetsViewSet)
router.register(r'tab', OneViewSet)
router.register(r'tabs_name', TwoViewSet)

# URLs настраиваются автоматически роутером
urlpatterns = [
    path("", include(router.urls)),

]