FILE=report
ifeq ($(shell uname -o),Cygwin)
	OPENNER=cygstart
else
	OPENNER=open
endif

all:
	latexmk -pdf ${FILE}
	${OPENNER} ${FILE}.pdf
clean:
	latexmk -c
long:
	latexmk --pdflatex ${FILE}
