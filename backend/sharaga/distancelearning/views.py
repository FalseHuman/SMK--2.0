from rest_framework import viewsets

from .models import *
from .serializers import *


class DistanceViewSet(viewsets.ModelViewSet):
    queryset = Distance.objects.all().order_by('pub_date')
    serializer_class = DistanceSerializer

class SheduleViewSet(viewsets.ModelViewSet):
    queryset = Shedule.objects.all().order_by('pub_date')
    serializer_class = SheduleSerializer
