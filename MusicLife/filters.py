from django import forms
import django_filters
from .models import Song, Singer

class SongFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='icontains')
    author = django_filters.CharFilter(lookup_expr='icontains')
    singer = django_filters.CharFilter(lookup_expr='icontains')

    class Meta:
        model = Song
        fields = {'name', 'author', 'singer'}

class SingerFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='icontains')

    class Meta:
        model = Singer
        fields = {'name'}