# rating admin ui

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.0.

## Docker

\_Instructions are written for a Windows, Mac users may need to make slight adjustments

1.  Open a terminal session
2.  Navigate to the project directory for tool.local-dev
3.  `git pull` _(note: if vagrant is already up to date you can skip this step)_
4.  `vagrant up` _(note: if vagrant is already up you can skip this step)_
5.  `vagrant ssh -- -o ServerAliveInterval=10`
6.  `sudo su -`
7.  Navigate to your project directory in vagrant _(If you followed the instructions in confluence, this will be /repos/portals.underwriting.ratingengine.admin.web)_
8.  _(optional)_
    If you are working in multiple layers and need to interface with other local containers,
    1.  uncomment the two "networks" sections in docker-compose.yml
    2.  create a local docker network with the following command: `docker network create toolslocaldev_default`
9.  If this is the first time running the project, or you have made changes to nginx configuration, you must build the project: "docker-compose build"
10. To run the project: `docker-compose up`
    - This will take over your terminal session, if you wish to run additional commands in the same terminal, you should use the `-d` parameter
11. Once docker-compose successfully completes, the site can be accessed through http://192.168.99.101:8080 (IP may vary based on vagrant setup)
12. To stop the running process: `docker-compose down`

- If you did not use the `-d` parameter when running `docker-compose up` you will need to hit CTRL+C to kill the process

## Development

1.  In order to run the project using the @angular/cli locally (outside of the docker container), ensure node v8.9.4 or greater is installed, then run the following command to install the angular cli: `npm install -g @angular/cli`
2.  Install the project's local dependencies (from portals.underwriting.ratingengine.admin.web folder) `npm install`
3.  Run `ng serve -o` for a dev server. The -o parameter will automatically open a browser window at `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help .

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md)..
