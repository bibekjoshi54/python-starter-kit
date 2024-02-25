# Sample Python Project Template


## Project Description
This is a sample project structure template for a Python project. I use this template in most of
my projects.

It contains a bunch of shell files, that can be executed using the make command.

Note: If you want to use this for now, you can do a project-wide search and
replace for `sample_project` and `SampleProject` with your project name.

Will be adding the support for cookie cutter soon.

### Make Commands
- `make setup`: Setups the development environment
- `make lint`: Runs the lint process using mypy and ruff
- `make format`: Formats the project using ruff
- `make unit_test`: Runs the unit test
- `make integration_test`: Runs the integration test
- `make e2e_test`: Runs the e2e test

### Containers

The project comes with Dockerfile which performs the multistage build
The docker image would not have development and test dependencies installed, and the final image would have only installed production dependencies.

To test inside the container you can use the docker compose.

- `docker compose run dev`: Runs the code based on the base docker image
- `docker compose run unit_tests`: Runs the unit_tests inside the container.
- `docker compose run integration_tests`: Runs the integration_tests inside the container.
- `docker compose run e2e_tests`: Runs the e2e_tests inside the container.


### Poetry

Poetry is used for managing the dependencies of the project.
`project.toml` file contains the configuration for the various tools used in this project.

#### Quick commands to remember:

- `poetry add --group test coverage`: Installs the coverage package as a test dependency
- `poetry add pydantic`: Installs the pydantic package as a dependency
- `poetry config --list`: Quickly check the environment variables related to the poetry
- `poetry run <Any commad>`: Runs the command inside the poetry virtual environment
- `poetry shell`: Activates the poetry virtual environment

### Pending Items
- Add support for GitHub actions
- Add support for cookie-cutter
