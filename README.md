# vpn\_eth

 &copy; Matteo Corti, ETH Zurich, 2024.

 see [AUTHORS.md](AUTHORS.md) for the complete list of contributors

![](https://img.shields.io/github/v/release/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/downloads/matteocorti/vpn_eth/latest/total)&nbsp;![](https://img.shields.io/github/downloads/matteocorti/vpn_eth/total)&nbsp;![](https://img.shields.io/github/license/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/stars/matteocorti/vpn_eth)&nbsp;![](https://img.shields.io/github/forks/matteocorti/vpn_eth)

A script to manage VPN connection with Cisco Secure Client on macOS to the ETH Zurich

## Usage
```text
Usage: vpn_eth.sh command [OPTIONS]
       vpn_eth.sh --help

Commands:
   connect                         Connects
   disconnect                      Disconnects
   status                          Shows the connection status

Options:
   -i,--init                       Initializes the default settings
   -h,--help,-?                    This help message
   -r,--realm realm                Realm
   -s,--server server              VPN server
   -u,--user user                  User
   -v,--version                    Prints the script version number
   -z,--vpz vpz                    VPZ

Report bugs to https://github.com/matteocorti/vpn_eth/issues
```

## Configuration

see [INSTALL.md](INSTALL.md) for installation instructions.

You will need your RADIUS password and your OTP secret: see [About the «OTP Secret»](https://people.math.ethz.ch/~michele/vpn-mfa-without-pw#otp-secret)

Both will be stored in your macOS keychain.

By the first run the script will ask for the credentials:

```text
$ ./vpn_eth connect
Please specify RADIUS password: 
Please specify OTP secret: 
```


## Documentation

The majority of the documentation files are written using the [GitHub Flavored Markdown](https://github.github.com/gfm/) language.

## Bugs

Report bugs to [https://github.com/matteocorti/vpn_eth/issues](https://github.com/matteocorti/vpn_eth/issues)
