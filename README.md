# Python Containers for SMU HPC Systems

Template repository for containerized Python environments on SMU HPC Systems.

## Building Apptainer Container via Docker

1. Edit container/module name and version in `build_images.sh`.
2. In `module.lua`, edit the `img_directory` path to a desired location on SMU
   HPC systems.
3. Rename `module.lua` to the name choosen above.
4. Run script via `./build_images.sh` on a system with Docker.
5. Upload the generated Apptainer container image and associated module file to
   SMU HPC systems.
6. The container can be used via `module use <path_to_module_file_directory> &&
   module load <module_file_name>`.`

## Example Commands for Working with Docker Manually

Several options, including:

`docker build -t module:latest .`

`docker build --platform linux/amd64 -t module:latest .`

`docker build --no-cache --progress=plain -t module:latest .`

`docker run --entrypoint /bin/bash -it module:latest`
