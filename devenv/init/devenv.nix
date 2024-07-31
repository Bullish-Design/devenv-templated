{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env = {
    PROJ = "#PROJ_NAME";
    #ENVVAR_LIST
    };

  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git
    #PACKAGE_LIST
    ];

  # https://devenv.sh/languages/
    #LANGUAGES_INIT

  # https://devenv.sh/processes/
    #PROCESSES_INIT

  # https://devenv.sh/services/
    #SERVICES_INIT

  # https://devenv.sh/scripts/
  scripts = {
    hello.exec = ''echo Starting project environment for $PROJ...'';
    #SCRIPTS_LIST
    };

  enterShell = ''
    hello
    #ENTER_SHELL_SCRIPT
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
    #ENTER_TEST_SCRIPT
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;
    #PRE_COMMIT_HOOKS_INIT

  # See full reference at https://devenv.sh/reference/options/
}
