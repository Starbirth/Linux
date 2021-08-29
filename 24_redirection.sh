<<Documentation
NAME            : V.Karthikeyan
DATE            : 18.05.2021
DESCRIPTION     : Use pipes or redirection to create an infinite feedback loop.
INPUT           : Before loop file contents
	     	  Hai hello 
OUTPUT          : After loop file contents
	 	  Hai hello
		  Hai hello
		  ..
		  ..

Documentation

echo "Before loop file contents"
cat loop.txt
echo "After loop file contents"
tail -f loop.txt >> loop.txt | tail -f loop.txt		#executes loop continuously until ctrl+c is given

