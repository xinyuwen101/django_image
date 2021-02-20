import os
from pathlib import Path
import dj_database_url
from storages.backends.s3boto3 import S3Boto3Storage


# user auth URL
LOGIN_REDIRECT_URL = "/"
LOGIN_URL = "/login"
LOGOUT_URL = "/logout"

# auth backends
# SOCIAL_AUTH_POSTGRES_JSONFIELD = True
SOCIAL_AUTH_URL_NAMESPACE = "social"
AUTHENTICATION_BACKENDS = [
    "django.contrib.auth.backends.ModelBackend",
    "social_core.backends.google.GoogleOAuth2",
]

SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = os.getenv("SOCIAL_AUTH_GOOGLE_OAUTH2_KEY")
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = os.getenv("SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET")

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
# SECRET_KEY = '+(z(161p6*@*2tqu()8nlojt0$x0v-+25fr_397%yp(4202&d%'
SECRET_KEY = os.environ.get(
    "DJANGO_SECRET_KEY", "+(z(161p6*@*2tqu()8nlojt0$x0v-+25fr_397%yp(4202&d%"
)

# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = True
DEBUG = bool(os.environ.get("DJANGO_DEBUG", True))

ALLOWED_HOSTS = ["xinyuwen-django-image-share.herokuapp.com", "localhost"]


# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "accounts.apps.AccountConfig",
    "images.apps.ImageConfig",
    "sorl.thumbnail",
    "social_django",
    "storages",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

ROOT_URLCONF = "django_gallery.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [BASE_DIR / "templates"],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "django_gallery.wsgi.application"


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql',
#         'NAME': 'gallery',
#         'USER': 'root',
#         'PASSWORD': '',
#         'HOST': 'localhost',
#         'PORT': '3306',
#     }
# }

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql_psycopg2',
#         'NAME': 'django_gallery',
#         'USER': 'xinyuwen',
#         'PASSWORD': '',
#         'HOST': 'localhost',
#         'PORT': '5432',
#     }
# }

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": BASE_DIR / "db.sqlite3",
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = "en-us"

TIME_ZONE = "UTC"

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")
STATICFILES_DIRS = [BASE_DIR, "static"]
STATIC_URL = "/static/"

MEDIA_ROOT = os.path.join(BASE_DIR, "media")
MEDIA_URL = "/media/"


# Heroku: Update database configuration from $DATABASE_URL.


db_from_env = dj_database_url.config(conn_max_age=500)
DATABASES["default"].update(db_from_env)


# Amazon S3 settings

AWS_ACCESS_KEY_ID = os.getenv("AWS_ACCESS_KEY_ID")
AWS_SECRET_ACCESS_KEY = os.getenv("AWS_SECRET_ACCESS_KEY")
AWS_STORAGE_BUCKET_NAME = os.getenv("AWS_STORAGE_BUCKET_NAME")
AWS_DEFAULT_ACL = None
AWS_S3_CUSTOM_DOMAIN = f"{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com"
AWS_S3_OBJECT_PARAMETERS = {"CacheControl": "max-age=86400"}


# s3 public media settings

PUBLIC_MEDIA_LOCATION = "media"
MEDIA_URL = f"https://{AWS_S3_CUSTOM_DOMAIN}/{PUBLIC_MEDIA_LOCATION}/"
DEFAULT_FILE_STORAGE = "django_gallery.settings.PublicMediaStorage"


class PublicMediaStorage(S3Boto3Storage):
    location = "media"
    default_acl = "public-read"
    file_overwrite = False