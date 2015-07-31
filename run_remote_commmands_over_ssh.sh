#!/bin/bash

HELLO="world"

ssh $HOST bash -c "'
echo $HELLO
'"
