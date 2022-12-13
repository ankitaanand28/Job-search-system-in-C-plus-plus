CPP = g++
FLAGS = -O3 -pg -Wall -W
RM  = rm -f
EXEC = testProg 

OBJECTS = \
	 function.o \
	 job.o \

all: $(OBJECTS) compile touch 

function.o : function.cpp
					 $(CPP) $(FLAGS) -c function.cpp
job.o : job.cpp
			   		 $(CPP) $(FLAGS) -c job.cpp
clean:  
					 $(RM) $(OBJECTS) $(EXEC) 

compile: 
					 $(CPP) $(FLAGS) $(OBJECTS) -o $(EXEC) 

touch:
					 @echo " "
					 @echo "Compilation done successfully..................."
					 @echo " "
