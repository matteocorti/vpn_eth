# vpn\_eth

&copy; Matteo Corti & Michele Marcionelli, ETH Zurich, 2024-2025.

 see [AUTHORS.md](AUTHORS.md) for the complete list of contributors

![](https://img.shields.io/github/v/release/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/downloads/matteocorti/vpn_eth/latest/total)&nbsp;![](https://img.shields.io/github/downloads/matteocorti/vpn_eth/total)&nbsp;![](https://img.shields.io/github/license/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/stars/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/forks/matteocorti/vpn_eth)

A script to manage VPN connection with Cisco Secure Client on macOS to the ETH Zurich

## Usage
```text
Usage: vpn_eth.sh [ command ] [OPTIONS]

Commands:
   connect,c                       Connects
   disconnect,d                    Disconnects
   init,i                          Initializes the default settings
   stats                           Shows the connection statistics
   status,s                        Shows the connection status

Options:
   -h,--help,-?                    This help message
   -s,--server server              VPN server
   -r,--realm realm                Realm
   -z,--vpz vpz                    VPZ
   -u,--user user                  User
   -f,--flush-pf                   Removes AnyConnect local firewall rules
   -v,--version                    Prints the script version number

Report bugs to https://github.com/matteocorti/vpn_eth/issues
```

## Configuration

see [INSTALL.md](INSTALL.md) for installation instructions.

### Parameters

You will need the VPN server (usually sslvpn.ethz.ch) the realm and the vpz you need to connect to.

These can be specified as parameters on the command line. E.g.

```
vpn_eth conncect --server sslvpn.ethz.ch --realm id --vpz id --user corti
```

or stored in the configuration file. For example (change the username):

```
$ cat ~/.vpn_eth.rc
SERVER=sslvpn.ethz.ch
USER=username
REALM1=staff-net
VPZ1=staff-net
REALM2=student-net
VPZ2=student-net
```

The configuration file can be generated interactively with the ```init``` command:

```
$ vpn_eth init
Please specify the VPN server: sslvpn.ethz.ch
Please specify the realm: id
Please specify the vpz: id
```

The sample configuration file can be installed with

```
make install_conf
```

### Credentials

You will need your RADIUS password and your OTP secret: see  [About the «OTP Secret»](https://github.com/matteocorti/vpn_eth/wiki/OTP-Secret)

Both will be stored in your macOS keychain.

By the first run the script will ask for the credentials:

```text
$ ./vpn_eth connect
Please specify RADIUS password:
Please specify OTP secret:
```

## xbar and SwiftBar Plugin

The script can be used as an [xbar](https://xbarapp.com) or a [SwiftBar](https://github.com/swiftbar/SwiftBar) plugin.

### xbar

[Install as an xbar plugin](xbar://app.xbarapp.com/openPlugin?path=./vpn_eth.10s.sh) or follow the manual [installation instructions](INSTALL.md).

### SwiftBar

Follow the manual [installation instructions](INSTALL.md).

## Documentation

The majority of the documentation files are written using the [GitHub Flavored Markdown](https://github.github.com/gfm/) language.

## Bugs

Report bugs to [https://github.com/matteocorti/vpn_eth/issues](https://github.com/matteocorti/vpn_eth/issues)
