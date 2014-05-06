# installr [![Build Status](https://secure.travis-ci.org/attomos/installr.svg?branch=master)](http://travis-ci.org/attomos/installr) [![NPM version](https://badge.fury.io/rb/installr.svg)](http://badge.fury.io/rb/installr)

CLI for Installr (http://installrapp.com/) API.

## Installation

    $ gem install installr

## Usage

### Authentication

1. Create new API token if you don't have one [https://www.installrapp.com/dashboard#/account](https://www.installrapp.com/dashboard#/account)
2. Run `installr init` This will prompt you to enter your API token and put it in `~/.installr` file.

### Create App

    $ installr create <app_name>

### List of Apps

    $ installr list

### App Details

    $ installr app

### Team Details

    $ installr team

### Invite Testers

    $ installr invite

## Contribution

Any pull requests, comments and recommendations are welcome.

    $ git clone git@github.com:attomos/installr.git
    $ cd installr
    $ bundle install
    $ rake build # or rake install

## Copyright

Copyright (c) 2014 Nattaphoom Ch.
See [LICENSE](https://github.com/attomos/installr/blob/master/LICENSE) for details.
