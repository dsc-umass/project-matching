[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/dsc-umass/project-matching)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# project-matching

<!-- [![Build Status](https://travis-ci.org/abhinavtripathy/XAuth.svg?branch=master)](https://travis-ci.org/abhinavtripathy/XAuth) -->

<div><p align="center">
<center><h4>project-matching is supported & used by:</h4><a href="https://www.linkedin.com/company/dscntu/"><img width="270" src="assets/dsc_ntu.png" target="_blank"></a>
<a href="https://umassdsc.com/" target="_blank"><img width="270" src="assets/dsc_umass.jpg"></a>
<a href="http://www.dsc-rpi.club/" target="_blank"><img width="270" src="assets/dsc_rpi.png"></a>
</center></p></div>

Project Matching is an open source project that helps teams/clubs help match their members to projects. The application allows the admin to rank people's skills based on projects and then the team members rank projects, then the application matches people to projects based on the [stable match algorithm](https://en.wikipedia.org/wiki/Stable_marriage_problem). 

## Getting Started

### Prerequisites

Since the applciation has been containerized through docker-compose, you would need docker-compose.

### Installing & Running the Containers

To build the container(this is a one time build):

```
sudo docker-compose build
```

To run the container (everytime you want to start the application):

```
sudo docker-compose up
```

You can press ctrl/command + C on the terminal to stop the container.

### Accessing the Rails Container

To access the Rails Container(make sure the containers are already running):

```
sudo bash docker_shell.sh
```
If you want to access the rails console, then run the following command after the previous one:

```
rails c
```

### Accessing the Postgres Container

To access the Postgres Container(make sure the containers are already running):

```
sudo bash db_shell.sh
```

Then type:

```
psql project_matching_development projectmatch projectmatchpass
```

### Common Errors & FAQ

In case of a database not found or database not created error:

Access the Rails Container and run:

```
cd docker

bash db_setup.sh
```

If you want to reset the container and want to rebuild it, run:

```
sudo docker-compose down
```

and then rebuild it with docker-compose build


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details



