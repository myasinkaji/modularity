#! /usr/bin/sh
# describe module, but we must know the module name
java --describe-module m_name -p m_path
# compile with classpath
javac -cp -d destination_folder -cp class_path `find source_project(Module)_directory -name *.java`

# list java modules of jkd
java --list-modules
# list modules of our jar/module
java --list-modules -p path_to_jar/module
