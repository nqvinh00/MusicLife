from django.shortcuts import render
from .models import Song, Singer
from .filters import SongFilter, SingerFilter
from django.http import HttpResponse, Http404, FileResponse
import mimetypes

# Create your views here.

def index(request):
    songs = Song.objects.all()
    query = songs.order_by('-id')[:5]
    song_filter = SongFilter(request.GET, queryset=query)
    singers = Singer.objects.all().order_by('id')[:3]
    context = {
        'form': song_filter.form,
        'songs': song_filter.qs,
        'singers': singers,
    }
    return render(request, 'MusicLife/index.html', context)

def about(request):
    return render(request, 'MusicLife/about.html')

def songs(request):
    query = Song.objects.all()
    song_filter = SongFilter(request.GET, queryset=query)
    context = {
        'form': song_filter.form,
        'songs': song_filter.qs
    }
    return render(request, 'MusicLife/songs.html', context)

def singers(request):
    query = Singer.objects.all()
    singer_filter = SingerFilter(request.GET, queryset=query)
    context = {
        'form': singer_filter.form,
        'singers': singer_filter.qs
    }
    return render(request, 'MusicLife/singers.html', context)

def singer_detail(request, id):
    try:
        singer = Singer.objects.get(id=id)
        name = singer.name
        songs = Song.objects.filter(singer=name)[:4]
    except Singer.DoesNotExist:
        raise Http404("Singer does not exist")
    context = {
        'singer':singer,
        'songs':songs
    }
    return render(request, 'MusicLife/singer.html', context)

def singer_song(request, singer_name):
    songs = Song.objects.filter(singer=singer_name)
    return render(request, 'MusicLife/singer-song.html', {'songs': songs})

def song_download(request, id):
    try:
        song = Song.objects.get(id=id)
        file_path = '/home/vinh/Documents/Python/Project2/static/audio/' + song.source 
        file = open(file_path, 'rb')
        type, i = mimetypes.guess_type(song.source)
        response = HttpResponse(file, content_type=type)
        response['Content-Disposition'] = 'attachment; filename = %s' % song.source
        return response
    except Song.DoesNotExist:
        raise Http404('File does not exist')