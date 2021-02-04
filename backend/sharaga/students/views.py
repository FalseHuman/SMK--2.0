from rest_framework import viewsets

from .models import *
from .serializers import *


class StudentsViewSet(viewsets.ModelViewSet):
    queryset = Students.objects.all().order_by('pub_date')
    serializer_class = StudentsSerializer