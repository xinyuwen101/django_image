from django.contrib.auth import views as auth_views
from django.urls import path

from . import views

app_name = 'accounts'
urlpatterns = [
    path('', views.dashboard, name='dashboard'),
    path('login/',
         auth_views.LoginView.as_view(template_name='accounts/login.html', redirect_field_name='next'),
         name='login'),
    path('logout/',
         auth_views.LogoutView.as_view(template_name='accounts/dashboard.html'),
         name='logout'),
    path('register/', views.register, name='register'),
    path('profile/<str:username>', views.profile, name='profile'),
    path('user_list/', views.user_list, name='user_list'),
    path('follow/<str:username>', views.follow, name='follow'),
    path('unfollow/<str:username>', views.unfollow, name='unfollow')
]
