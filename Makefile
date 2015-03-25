.SUFFIXES: .java .class	

default: JSON-java.jar

JSON-java.jar: classes
	jar cvf $@ org

classes:
	javac *.java -d .

clean:
	rm -rf org

distclean: clean
	rm JSON-java.jar
