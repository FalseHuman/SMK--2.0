from rest_framework import viewsets
from rest_framework import generics
from django.shortcuts import render, get_object_or_404
from .models import *
from .serializers import *
'''class MultipleFieldLookupMixin:
    """
    Apply this mixin to any view or viewset to get multiple field filtering
    based on a `lookup_fields` attribute, instead of the default single field filtering.
    """
    def get_object(self):
        queryset = self.get_queryset()             # Get the base queryset
        queryset = self.filter_queryset(queryset)  # Apply any filter backends
        filter = {}
        for field in self.lookup_fields:
            if self.kwargs[field]: # Ignore empty fields.
                filter[field] = self.kwargs[field]
        obj = get_object_or_404(queryset, **filter)  # Lookup the object
        self.check_object_permissions(self.request, obj)
        return obj'''
'''(MultipleFieldLookupMixin, generics.RetrieveAPIView,)'''
class OneViewSet(viewsets.ModelViewSet):
    queryset = Tabs.objects.all().order_by('id')
    serializer_class = TabsSerializer
    lookup_field =  'sections'
class TwoViewSet(viewsets.ModelViewSet):
    queryset = Section.objects.all().order_by('id')
    serializer_class = TabSerializer
    lookup_field =  'slug'

