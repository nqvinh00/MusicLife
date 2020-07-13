from django.urls import path
from django.conf.urls import url
from . import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('songs/', views.songs, name='songs'),
    path('singers/', views.singers, name='singers'),
    path('singers/<int:id>/', views.singer_detail, name='singer_detail'),
    path('singer-song/<str:singer_name>', views.singer_song),
    path('songs/download/<int:id>/', views.song_download),
] + static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)