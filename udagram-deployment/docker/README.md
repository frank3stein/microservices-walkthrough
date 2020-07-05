### Environment Variables
Set environment variables for config values such as the database connection. The required environment values can be found in the `docker-compose.yaml` file.

### Setup Docker Environment
You'll need to install docker https://docs.docker.com/install/. Open a new terminal within the project directory and run:

1. Build the images: `docker-compose -f docker-compose-build.yaml build --parallel`
2. Push the images: `docker-compose -f docker-compose-build.yaml push`
3. Run the container: `docker-compose up`

## Notes
* The frontend container starts earlier than the backend containers. Loading the frontend before they are running will prompt an error. Confirm that all the desired containers are running before testing out the frontend and API.
* When migrating this application to use containers, we may run into an issue with the `bcrypt` package. This is because the `node_modules` were installed on an operating system different than that of the one in the Docker image. The solution is to set `node_modules` in our `.dockerignore` file so that `node_modules` are not copied over from our local machine into the container.