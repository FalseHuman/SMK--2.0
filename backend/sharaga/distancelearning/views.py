from rest_framework import viewsets

from .models import *
from .serializers import *


class DistanceViewSet(viewsets.ModelViewSet):
    queryset = Distance.objects.all().order_by('pub_date')
    serializer_class = DistanceSerializer

class SheduleViewSet(viewsets.ModelViewSet):
    queryset = Shedule.objects.all().order_by('pub_date')
    serializer_class = SheduleSerializer

class FeldhersViewSet(viewsets.ModelViewSet):
    queryset = Feldhers.objects.all().order_by('id')
    serializer_class = FeldhersSerializers


class NursesViewSet(viewsets.ModelViewSet):
    queryset = Nurses.objects.all().order_by('id')
    serializer_class = NursesSerializers

class ObstetricianViewSet(viewsets.ModelViewSet):
    queryset = Obstetrician.objects.all().order_by('id')
    serializer_class = ObstetricianSerializers

