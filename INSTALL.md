# vpn\_eth installation

## Requirements

* [Cisco Secure Connect](https://unlimited.ethz.ch/display/itkb/VPN)
* [oathtool](https://www.nongnu.org/oath-toolkit/oathtool.1.html)
* [xbar](https://xbarapp.com) if used as a menubar app

## Optional dependencies

* ```tar``` and ```bzip2``` to build release packages

## Development

Following tools are required for development:

* [shfmt](https://github.com/mvdan/sh) to format the source files
* [ShellCheck](https://www.shellcheck.net) for the code quality checks
* [codespell](https://github.com/codespell-project/codespell) for the spelling checks

## Installation

* You can run the script from the shell.
* If you want to install it systemwide, copy the plugin to a directory in the path, and ```vpn_eth.1``` in an appropriate directory in the ```$MANPATH```
* Use ```sudo make install``` to install it systemwide
* To install the bash completion script run ```sudo make install_bash_completion``` (it will install the completion script in the directory defined by ```pkg-config --variable=completionsdir bash-completion```)
* To install the script as an xbar plugin run ```sudo make install_xbar```
