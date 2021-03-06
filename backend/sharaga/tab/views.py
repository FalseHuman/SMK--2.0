from rest_framework import viewsets
from rest_framework import generics
from django.shortcuts import render, get_object_or_404
from rest_framework.filters import SearchFilter, OrderingFilter
from .models import *
from .serializers import *

class OneViewSet(viewsets.ModelViewSet):
    queryset = Tabs.objects.all().order_by('id')
    serializer_class = TabsSerializer
    lookup_field =  'sections'

class TwoViewSet(viewsets.ModelViewSet):
    queryset = Section.objects.all().order_by('id')
    serializer_class = TabSerializer
    lookup_field =  'slug'
    filter_backends = (SearchFilter, OrderingFilter)
    search_fields = ('title', 'body')

class CallbackViewSet(viewsets.ModelViewSet):
    queryset = Callback.objects.all().order_by('id')
    serializer_class = CallbackSerializer
