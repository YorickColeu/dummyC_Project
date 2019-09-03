# Dummy C project

## Introduction

Just a dummy C project, that's all.

Great for set up a tiny C project and do quick tests. 

## Run the program

* Download this project:

`git clone https://github.com/YorickColeu/dummyC_Project`

* Go to the repository:

`cd dummyC_Project`

* Use the command `make`, it will create an executable called main (or main.exe on Windows)

* Using Linux, run the programm using the command `./main`

## Test the program

In order to test the program, you must install `bats` (https://github.com/sstephenson/bats#installing-bats-from-source).

Then install some bats helper:

```
mkdir ~/bats_helper && cd ~/bats_helper

git clone https://github.com/ztombol/bats-support

git clone https://github.com/ztombol/bats-assert
```

Then go to the `tests` directory and perform: `bats test.bats`
