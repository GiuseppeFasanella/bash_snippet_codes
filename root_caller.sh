#! /bin/bash
root -l -b
gROOT->ProcessLine(".L macro.C+");
MyFunction("args");
gROOT->ProcessLine(".q");