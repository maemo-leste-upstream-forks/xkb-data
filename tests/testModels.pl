#!/bin/env perl

use strict;
use xkbTestFunc;

backupXkbSettings();
                                                                                                                 
dumpXkbSettings( $origXkbRules, $origXkbModel, $origXkbLayouts, $origXkbVariants, $origXkbOptions );
                                                                                                                 
testLevel1( "model", 1 );

restoreXkbSettings();
