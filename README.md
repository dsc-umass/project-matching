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

### Installing & Running the Container

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

To access the Rails Container:

```
sudo bash docker_shell.sh
```
If you want to access the rails console, then run the following comand after the previous one:

```
rails c
```

### Accessing the Postgres Container

To access the Postgres Container:

```
sudo bash db_shell.sh
```

Then type:

```
psql project_matching_development projectmatch projectmatchpass
```

### Common Errors

In case of a database not found or database not created error:

Access the Rails Container and run:

```
cd docker

bash db_setup.sh
```

<!-- 
### Installing

```
yarn install

yarn start
``` -->
<!-- 
## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds -->


<!-- 
## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project. -->

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

<!-- ## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc -->

