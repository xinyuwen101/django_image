from django.contrib import messages, auth
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from .models import Contact
from .forms import MyUserCreationForm


def dashboard(request):
    return render(request, 'accounts/dashboard.html')


def register(request):
    if request.method == 'POST':
        user_form = MyUserCreationForm(request.POST)
        if user_form.is_valid():
            new_user = user_form.save(commit=False)
            new_user.set_password(
                user_form.cleaned_data['password1']
            )
            new_user.save()
            return render(request, 'accounts/register_done.html')
    else:
        user_form = MyUserCreationForm()
    return render(
        request,
        'accounts/register.html',
        {'user_form': user_form}
    )


@login_required
def profile(request, username):
    user = User.objects.filter(username=username).first()
    return render(
        request,
        'accounts/profile.html',
        {'user': user}
    )


@login_required
def user_list(request):
    all_users = User.objects.all()
    return render(
        request,
        'accounts/user_list.html',
        {'all_users': all_users}
    )


@login_required
def follow(request, username):
    user_to = User.objects.filter(username=username).first()
    user_from = request.user
    con = Contact(
        user_from=user_from,
        user_to=user_to
    )
    con.save()
    return redirect('accounts:profile', username=username)


@login_required
def unfollow(request, username):
    user_to = User.objects.filter(username=username).first()
    user_from = request.user
    con = Contact.objects.filter(user_from=user_from, user_to=user_to).first()
    if con:
        con.delete()
    return redirect('accounts:profile', username=username)
