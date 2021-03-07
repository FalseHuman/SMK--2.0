from rest_framework import viewsets

from .models import *
from .serializers import *


class ArticleViewSet(viewsets.ModelViewSet):
    queryset = Article.objects.all().order_by('-pub_data')
    serializer_class = ArticleSerializer
    lookup_field = 'slug'

class HomeViewSet(viewsets.ModelViewSet):
    queryset = Home.objects.all().order_by('id')
    serializer_class = HomeSerializer