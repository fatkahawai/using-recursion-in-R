# ----------------------------------------------------------------------------
# @description
# 
# Testing using RUnit
#
# to run unit tests, run this script, which will run your unit src then run all 
# the 'runit_*.R" test scripts RUnit finds in the 'tests' directory 
#
# @version: 1.0
# ----------------------------------------------------------------------------
# Tailor this for your project

myRoot <- file.path(".","projects")
projectPath <- file.path(myRoot,"recursion")

# ----------------------------------------------------------------------------
# Generic from here - use unchanged for any project

library(RUnit)

message("current working directory ", getwd())

message("running source script in ", srcPath)

srcPath <- file.path(projectPath,"recursive example.R")
if(!file.exists(srcPath)){ 
	message("can't find source file")
}
source(srcPath) 
message("source script completed")

testDir <- file.path(projectPath,"tests")

message("Now running RUnit test suite - runs all 'runit_*.R' test scripts found in directory ", testDir)

suite <- defineTestSuite("recursion suite", testDir)

testResult <- runTestSuite(suite)
message("test suite completed")
printTextProtocol(testResult)
