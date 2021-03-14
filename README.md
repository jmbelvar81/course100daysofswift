# Learning Basic Swift Programming in "Only 100 Days"
---

## **Objective**

This personal repository contains my notes and trainning for the next course:

- https://www.hackingwithswift.com/100/1

Although I could add my own notes and extension on it to improve my own learning.


Every directory into the **"days"** directory contains the notes corresponding to the *"Lesson of the day"*. Enjoy it!!

## **Installing Swift on WSL Environment**

Before to describe the steps to install swift on your WSL System. I show the main link from Microsoft where you could know more about it and the process to install it. It's an alternative for the persons without a MacOS/iPadOS System:

- https://docs.microsoft.com/es-es/windows/wsl/install-win10


With WSL already on our Windows 10. The first thing that you need is define a password for your WSL environment. The steps to get configure this are showed below:

```bash
# After login in wsl with wsl -u root:
#
passwd <your user>
New password: <include your password here>
Retype new password: <include your password here again>
passwd: password updated successfully <-- You should be this message

# After these actions , type the next command and login again without "-u root" option:
#
exit

# Login again to follow the next part of the "mini-tutorial":
#
wsl
```

Now, with the user owning a "sudo" password for WSL we are enabled to install the required packages that allow include
the swift language tools under our WSL environment:

```bash
# We show the Ubuntu version for our case: - lsb_release -a
#
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.1 LTS
Release:        20.04
Codename:       focal

# update the system packages:
#
sudo apt update

# "Re-Quirements":
#
sudo apt-get -y install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev

# The first time you need add these keys:
# Note: 
#   - These are the keys for the different swift versions.
#
gpg --keyserver hkp://pool.sks-keyservers.net \
      --recv-keys \
      '7463 A81A 4B2E EA1B 551F  FBCF D441 C977 412B 37AD' \
      '1BE1 E29A 084C B305 F397  D62A 9F59 7F4D 21A5 6D5F' \
      'A3BA FD35 56A5 9079 C068  94BD 63BC 1CFE 91D3 06C6' \
      '5E4D F843 FB06 5D7F 7E24  FBA2 EF54 30F0 71E1 B235' \
      '8513 444E 2DA3 6B7C 1659  AF4D 7638 F1FB 2B2B 08C4' \
      'A62A E125 BBBF BB96 A6E0  42EC 925C C1CC ED3D 1561' \
      '8A74 9566 2C3C D4AE 18D9  5637 FAF6 989E 1BC1 6FEA'

# or , alternatively:
#
wget -q -O - https://swift.org/keys/all-keys.asc | \
  gpg --import -

# Refresh the Keys:
#
gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

# Dowload the Signature for the tool chain:
#
wget https://swift.org/builds/swift-5.3.3-release/ubuntu2004/swift-5.3.3-RELEASE/swift-5.3.3-RELEASE-ubuntu20.04.tar.gz.sig

# Download the tool chain:
#
wget https://swift.org/builds/swift-5.3.3-release/ubuntu2004/swift-5.3.3-RELEASE/swift-5.3.3-RELEASE-ubuntu20.04.tar.gz

# Validate using this:
# Note:
#  - Change your swift package for this format if a newer one was downloaded by you: 
#    gpg --verify swift-<VERSION>-<PLATFORM>.tar.gz.sig
gpg --verify swift-5.3.3-RELEASE-ubuntu20.04.tar.gz.sig

# Uncompress the tools:
#
 mkdir ~/swift533/ && tar -zxf swift-5.3.3-RELEASE-ubuntu20.04.tar.gz -C ~/swift533/ -v

# Add to PATH:
#
export PATH=~/swift533/swift-5.3.3-RELEASE-ubuntu20.04/usr/bin/:"${PATH}"

# Execute swift REPL [READ-EXECUTE-PROCESS-LOOP]:
# Note:
#  - :quit  or :exit or :q will quit the REPL
#
swift
```

Finally Make the change permanent in the .bashrc: - Add the same line to export the swift repl in the PATH

```bash
# Adding Swift REPL permanently in the file ~/.bashrc:
#
export PATH=~/swift533/swift-5.3.3-RELEASE-ubuntu20.04/usr/bin/:"${PATH}"

# Refresh the bash shell:
#
source ~/.bashrc

# Test that swift is found without include the install directory path:
#
swift -version

Swift version 5.3.3 (swift-5.3.3-RELEASE)
Target: x86_64-unknown-linux-gnu

```

**From this moment, your system is ready to follow the course using the swift tools and REPL - Good Luck!!! :-)**

## **Notes**

- It's included a directory with several scripts. The description for each one is below:
  - **creaateDirs.sh**: Allow create the subdirectories for each lesson with a simple empty readme
  - **getAuthors.sh** : Generate from the git log the file with the authors of the sourcecode from register of commits.

- One of the test environment is based in **WSL [Windows Subsystem for Linux] under Windows 10 Pro**.
  Check the WSL Section of this document to know more about how to install the swift packages on this environment type.
  Although is not exahustively tested on Linux, the actions described for WSL should be valid too on Ubuntu OS under the 
  same version used in WSL.

- Probably is good you include a .gitignore to avoid include your swift and/or packages:
```bash
# cat .gitignore
#
swift-*
```
