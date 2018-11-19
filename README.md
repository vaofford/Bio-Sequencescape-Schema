# Bio-Sequencescape-Schema
DBIx::Class schema for sequencescape warehouse

[![Build Status](https://travis-ci.org/sanger-pathogens/seroba.svg?branch=master)](https://travis-ci.org/sanger-pathogens/Bio-Sequencescape-Schema)   
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-brightgreen.svg)](https://github.com/sanger-pathogens/Bio-Sequencescape-Schema/blob/master/LICENSE)   

## Contents
  * [Introduction](#introduction)
  * [Installation](#installation)
    * [From Source](#from-source)
    * [Running the tests](#running-the-tests)
  * [Usage](#usage)
  * [License](#license)
  * [Feedback/Issues](#feedbackissues)

## Introduction
Dumps the sequencescape warehouse schema as a DBIC model. 

## Installation
Details for installing Bio-Sequencescape-Schema are provided below. If you encounter an issue when installing Bio-Sequencescape-Schema please contact your local system administrator. If you encounter a bug please log it [here](https://github.com/sanger-pathogens/Bio-Sequencescape-Schema/issues) or email us at path-help@sanger.ac.uk.

### From Source
Clone the repository:   
   
`git clone https://github.com/sanger-pathogens/Bio-Sequencescape-Schema.git`   
   
Move into the directory and install all dependencies using [DistZilla](http://dzil.org/):   
  
```
cd Bio-Sequencescape-Schema
dzil authordeps --missing | cpanm
dzil listdeps --missing | cpanm
```
  
Run the tests:   
  
`dzil test`   
If the tests pass, install Bio-Sequencescape-Schema:   
  
`dzil install`   

### Running the tests
The test can be run with dzil from the top level directory:  
  
`dzil test`  

## Usage
```
build_schemata.pl
```
## License
Bio-Sequencescape-Schema is free software, licensed under [GPLv3](//github.com/sanger-pathogens/Bio-Sequencescape-Schema/blob/master/LICENSE).

## Feedback/Issues
Please report any issues to the [issues page](https://github.com/sanger-pathogens/Bio-Sequencescape-Schema/issues) or email path-help@sanger.ac.uk.