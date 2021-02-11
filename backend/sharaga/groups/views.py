from rest_framework import viewsets

from .models import *
from .serializers import *


class ObstetricianDistanceViewSet(viewsets.ModelViewSet):
    queryset = ObstetricianDistance.objects.all().order_by('id')
    serializer_class = ObstetricianDistanceSerializer

class FeldhersDistanceViewSet(viewsets.ModelViewSet):
    queryset = FeldhersDistance.objects.all().order_by('id')
    serializer_class = FeldhersDistanceSerializer

class NursesDistanceViewSet(viewsets.ModelViewSet):
    queryset = NursesDistance.objects.all().order_by('id')
    serializer_class = NursesDistanceSerializer