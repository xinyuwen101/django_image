# Django Image Share

## Overview
Django Image Share is a web application that allows users to upload, share, and manage images. Users can create accounts, upload images, and share them with others using unique shareable links.

## Features
- User authentication (signup, login, logout)
- Image upload and storage
- Generate shareable links for images
- Like and bookmark images
- Explore trending and recent images
- Responsive UI for better user experience

## Installation
To run this project locally, follow these steps:

### Prerequisites
Make sure you have the following installed on your system:
- [Python 3](https://www.python.org/downloads/)
- [pip](https://pip.pypa.io/en/stable/)
- [virtualenv](https://virtualenv.pypa.io/en/latest/)

### Steps
```sh
# Clone the repository
git clone https://github.com/xinyuwen23/django-image-share.git

# Navigate into the project directory
cd django-image-share

# Create and activate a virtual environment
python -m venv env
source env/bin/activate  # On Windows use: env\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Create a superuser (follow the prompts)
python manage.py createsuperuser

# Start the development server
python manage.py runserver
```

Open your browser and visit `http://127.0.0.1:8000/` to access the application.

## Usage
```md
- Sign up or log in to your account.
- Upload images to your gallery.
- Share images using unique links.
- Browse and like images uploaded by other users.
- Bookmark favorite images for later viewing.
```

## Technologies Used
```md
- Django (Backend Framework)
- SQLite / PostgreSQL (Database)
- Pillow (Image Processing)
- HTML, CSS, JavaScript (Frontend)
- Bootstrap (Styling)
```

## Future Improvements
```md
- Implement cloud storage support for image hosting
- Add image editing features (cropping, resizing, filters)
- Improve search and categorization of images
- Enable social media sharing
```

## Contributing
```md
Feel free to submit issues or pull requests to improve this project!
```

## License
```md
This project is licensed under the MIT License.
```

---
**Author:** [Xinyu Wen](https://github.com/xinyuwen23)

