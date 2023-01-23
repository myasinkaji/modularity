#! /usr/bin/sh
rm -rf output
mkdir -p output/classes
mkdir -p output/mlib
javac -d output/classes `find first -name *.java`
jar cf output/mlib/first.jar -C output/classes .

rm -rf output/classes
mkdir -p output/classes
javac -d output/classes -cp output/mlib/first.jar `find second -name *.java`
jar cf output/mlib/second.jar -C output/classes .
rm -rf output/classes
#java -cp output/mlib/first.jar:output/mlib/second.jar ir.home.second.Second
java -p output/mlib -m second/ir.home.second.Second


