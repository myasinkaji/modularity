#! /usr/bin/sh
rm -rf output
mkdir -p output/classes output/mlib
javac -d output/classes `find first -name *.java`
jar cfm output/mlib/first.jar first/META-INF/MANIFEST.MF -C output/classes .

rm -rf output/classes
mkdir output/classes
javac -d output/classes `find third -name *.java`
jar cf output/mlib/third.jar -C output/classes .

rm -rf output/classes
mkdir -p output/classes
#javac -d output/classes -cp output/mlib/first.jar `find second -name *.java`
javac -d output/classes -p output/mlib/first.jar:output/mlib/third.jar `find second -name *.java`
jar cfm output/mlib/second.jar second/META-INF/MANIFEST.MF -C output/classes .

java -cp output/mlib/first.jar:output/mlib/second.jar:output/mlib/third.jar ir.home.second.Second
echo '---------'
java -p output/mlib -m ir.home.second/ir.home.second.Second


