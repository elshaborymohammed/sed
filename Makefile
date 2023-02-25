PHONY: a

CC = gcc

a: 
	@echo "Hello World"

b:
	sed 's/the/AAA/' dukeofyork.txt

c:
	nl dukeofyork.txt | sed 's/the/AAA/'

d:
	sed 's/the/AAA/' < dukeofyork.txt > output.txt


e:
	nl dukeofyork.txt | sed s/down/FRED/


f:
	nl dukeofyork.txt | sed 's;down$\;FRED;'

g:
	sed 's/the/(&)/' dukeofyork.txt

h:
	sed 's/[A-Z][a-z]*/(&)/' dukeofyork.txt

i:
	sed 's/\([Tt]hey\) \(were\)/\2 \1/g' dukeofyork.txt

j:
	curl -X GET https://eg.hatla2ee.com/carSell/model\?Brand\=80 | \
	sed 's/<option value="/<model><id>/g' | \
	sed 's;">;</id><name><en>;g' | \
	sed 's;</option>;</en></name></model>;g' 

k:
	curl -X GET https://eg.hatla2ee.com/carSell/model\?Brand\=80 |\
	 sed -e 's/<option value="/<model><id>/g' \
	 -e 's;">;</id><en>;g' \
	 -e 's;</option>;</en></model>;g' 

l:
	curl -X GET https://eg.hatla2ee.com/carSell/model\?Brand\=80 |\
	 sed -e 's/<option value="/<model><id>/g' \
	 -e 's;">;</id><en>;g' \
	 -e 's;</option>;</en></model>;g' 

ll:
	curl -X GET https://eg.hatla2ee.com/carSell/model\?Brand\=80 | sed -e '1d' -e 's/<option value="/<model><id>/g' -e 's;">;</id><en>;g' -e 's;</option>;</en></model>;g'


z:
	sed "/<fiction type='a'>/,/<\/fiction>/ s/<author type=''><\/author>/<author type='Local'><\/author>/g;" book.xml