from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world!")

def about(request):
    return HttpResponse("This is the about page.")
