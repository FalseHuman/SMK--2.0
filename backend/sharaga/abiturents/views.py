from rest_framework import viewsets

from .models import *
from .serializers import *


class AbiturentsViewSet(viewsets.ModelViewSet):
    queryset = Abiturents.objects.all().order_by('pub_date')
    serializer_class = AbiturentsSerializer