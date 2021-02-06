from rest_framework import viewsets

from .models import *
from .serializers import *


class InfoViewSet(viewsets.ModelViewSet):
    queryset = Info.objects.all().order_by('pub_date')
    serializer_class = InfoSerializer
