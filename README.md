# gennyd

Generate static websites from dynamic hosts. Useful when coupled with **ghost** 
or **WordPress** for example.

## Prerequisites

Right now, you'll need :

* Bash
* wget
* cURL (for fetching error pages)

## Installation

You can either choose to run the following command to download script and install 
it in `/usr/local/bin`. Please make sure that you added that to $PATH environment
variable.

```console
  curl -sSL https://raw.githubusercontent.com/dguyon/gennyd/master/install.sh | sh
```

## Usage

```console
  gennyd [-o OUTPUT] [-e E404] [website]
```

## What's next?

Up to you!
Use ftp, rsync, s3cmd or whatever fancy flavor you have to deal with.
