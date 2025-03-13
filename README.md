# Baby Tools Shop - Dockerized Setup
This repository contains the setup for the Baby Tools Shop application, containerized using Docker. The purpose of this repository is to provide an easy and reproducible environment for running the Baby Tools Shop Django application inside a Docker container.

### Prerequisites

- Python 3.10.10

## Table of Contents
1. [Quickstart](#quickstart)
2. [Usage](#usage)
3. [Modifying the Application](#modifying-the-application)
4. [Checklist](babyshop_checklist.pdf)
5. [Dockerfile](Dockerfile)
   

## Quickstart

1. Install the Docker Desktop for Mac users here:

https://docs.docker.com/desktop/setup/install/mac-install/

and for Windows users here:

https://docs.docker.com/desktop/setup/install/windows-install/


1. Clone the repository:

```bash
git clone https://github.com/Bodev13/baby-tools-shop
cd baby-tools-shop
```

3. Add your IP under ALLOWED_HOSTS in the settings.py


```bash
ALLOWED_HOSTS = ['your_ip']
```

4. Buid the Docker image

```bash
docker build -t babyshop_app .
```
5. Run the Docker container

```bash
docker run -it --rm -p 8025:8025 babyshop_app
```
6. Access the application at

```bash
http://<your-server-ip>:8025/
```

## Usage

This will get the Baby Tools Shop running in a Docker container on your local machine and on the VM.

To create a superuser follow the steps below:

1. Find active containers

```bash
docker ps
```
2. Open an interactive terminal inside a running container

```bash
docker exec -it <container_name_or_id> /bin/sh
```
3. Create a Django superuser

```bash
python manage.py createsuperuser
```
and fill out all necessary fields, e.g., superuser_name and password

4. Login to the baby tools shop at http://<your-server-ip>:8025/admin

5. Create products inside the baby tools shop



## Modifying the Application

1. To modify the application or add additional dependencies, update the requirements.txt file.
1. Rebuild the Docker image after making changes to the application code or dependencies.
1. The WORKDIR in the Dockerfile is set to /app/your_app This is where the Django project files are located.
1. If you want to change the working directory or the location of the project files, modify the WORKDIR and COPY instructions in the Dockerfile accordingly.
1. The Docker container is configured to expose port 8025. If you wish to use a different port, change the EXPOSE instruction in the Dockerfile and adjust the docker run command accordingly (e.g., -p <new_port>:5000).



### DA Hints

This section will cover some hot tips when trying to interacting with this repository:

- Settings & Configuration for Django can be found in `babyshop_app/babyshop/settings.py`
- Routing: Routing information, such as available routes can be found from any `urls.py` file in `babyshop_app` and corresponding subdirectories

### Photos

##### Home Page with login

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080815407.jpg"></img>
##### Home Page with filter
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080840305.jpg"></img>
##### Product Detail Page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080934541.jpg"></img>

##### Home Page with no login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080953570.jpg"></img>


##### Register Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081016022.jpg"></img>


##### Login Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081044867.jpg"></img>
