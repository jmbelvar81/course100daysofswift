# Learning Basic Swift Programming in "Only 100 Days"
---

## **Objective**

This personal repository contains **my own notes** for the next course:

- https://www.hackingwithswift.com/100/swiftui

The idea comes from my first swift "*babysteps*" with *"an old course from the same author"* based in Apple UIKit:

- https://www.hackingwithswift.com/100/1

Every directory under the **"days"** folder contains the notes corresponding to the *"Lesson of the day"*. Enjoy it!!


## **Requirements**

- Install Swift in your Environment.
  (See the next section for details)

- MacOS Environment
  (Currently, I include some WSL notes but this environment
   is only useful for the most basic swift lessons where
   SwiftUI is not used :-( )

## **INSTALL SWIFT**

- On WSL (only useful for non SwiftUI lessons): [install_swift_repl_in_wsl](docs/install_swift_on_WSL.md)

- On MacOS: Install directly from *AppStore* installing *XCode* 

- On Linux: Follow the steps indicated for WSL , only the same Ubuntu version listed there is tested


## **TOOLs**

This repository contains a folder with several useful utilities, mainly oriented to organize the content when
you start:

  - **creaateDirs.sh**: Create the subdirectories for each lesson with a simple empty *"README"* file
  - **getAuthors.sh** : Generate from the git log information the file with the authors of this repository

## **Additional Considerations**

- One of the test environment is based in **WSL [Windows Subsystem for Linux] under Windows 10 Pro**.
  Check the WSL Section of this document to know more about how to install the swift packages on this environment type.

  Although is not exahustively tested on Linux, the actions described for WSL should be valid on an Ubuntu OS based 
  system running under the same version used in WSL.

- Probably is good you include a .gitignore to avoid include your swift related and/or other packages, e.g:
```bash
# cat .gitignore
#
swift-*
```
