from django.db import models
from django.utils import timezone
from django.db.models import Q
# Create your models here.

class Song(models.Model):
    name = models.CharField(max_length=200)
    author = models.CharField(max_length=200)
    singer = models.CharField(max_length=200)
    source = models.CharField(max_length=200)
    created_datetime = models.DateField(auto_now=True, blank=True, null=True)
    class Meta:
        default_related_name = 'song'

class Singer(models.Model):
    name = models.CharField(max_length=200)
    category = models.CharField(max_length=250)
    instrument = models.CharField(max_length=200)
    dateOfBirth = models.DateField(auto_now=True, null=True)
    description = models.CharField(max_length=500)
    avatar = models.CharField(max_length=200, null=True)
    avatar2 = models.CharField(max_length=200, null=True)

    class Meta:
        default_related_name = 'singer'