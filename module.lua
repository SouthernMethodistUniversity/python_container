load("apptainer")

local img_name      = 'module_latest_amd64_2023_08_16_15_29_46.sif'
local img_directory = '/hpc/applications/containers/'
local img_path      = pathJoin(img_directory, img_name)

function build_command(cmd)
  local cmd_beginning = 'singularity exec '
  local cmd_ending    = img_path .. ' ' .. cmd
  local sh_ending     = ' "$@"'
  local csh_ending    = ' $*'
  local sh_cmd        = cmd_beginning .. cmd_ending .. sh_ending
  local csh_cmd       = cmd_beginning .. cmd_ending .. csh_ending
  set_shell_function(cmd, sh_cmd, csh_cmd)
end

build_command('python3')
build_command('jupyter')
build_command('jupyter-lab')

