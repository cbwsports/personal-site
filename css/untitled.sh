#!/bin/bash


#
#	Author: Christopher Wright
#	Date: 11/17/2017
#	Description: The purpose of this script is to move weekly File Maker Pro
#				 backups to an AWS S3 bucket.


bkupdir="testSyncDir"
# Location of FileMaker Pro Backup files
bkuppath="~/Desktop/$bkupdir"
# Name of s3 bucket and directory
bkupbucket="rndmtestb/$bkupdir"


aws s3 sync $bkupdir s3://$bkupbucket 

echo $?
