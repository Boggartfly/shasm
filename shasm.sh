#!/bin/sh
#
# shasm is a simple script that invokes the assembler and linker for assembly language programs
# that the user writes,
# so that one does not need to invoke two commands repeatedly. "as" assembler and "ld" linker are required.
#   Copyright (C) 2015  Parth Sane
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
# Version 1.0  
# code starts here ↓
  as $1 -o $2
  file=$1
  filename="${file%.*}"
  ld $2 -e _main -o $filename