# Marcin Laguage
It is small Marcin Language Compiler, which I'll soon improve and develop.   
Fell free to fork and apply your corrections.
### Build Pre-requisites
On ubuntu
```
sudo apt-get install flex
sudo apt-get install build-essential
```
### Usage
```
make
./marcin
```
### Example
Short program for comparing two numbers from input:
```
marcIN a maRCin 0
maRcin b maRCin 0
marcin a
marcin b
marcIn Marcin a marCIN b marciN
	MARCIN  a marCINmarCIN MarciN  is lower MarciN
marcIn Marcin a MARcin b marciN
	MARCIN b marCINmarCIN MarciN  is lower MarciN
marcIn Marcin a maRCin maRCin b marciN
	MARCIN Marcin MarciN eq MarciN marciN
MARCIN MarciN \n MarciN
```
### Syntax
| Symbol | meaning | example| cpp equivalent|
|-|:-:|:-|:-|
|marcIN|Integer type|marcIN a| int a;|
|maRcin|Floating point type|maRcin b|float b;|
|mARcin  | Array |marcIn array mARcin| int array[];|
|maRCin|=|marcIN a maRCin 5| int a =6;|
|MARCIN|print|MARCIN 404| cout<<404;|
|marcin|read|marcin a| cin<<a;|
|MarciN|"|MARCIN MarciN marcin MarciN| cout<<"marcin";
|marcIn|if statement|marcIn Marcin a marCIN b marciN| if(a<b)
|marCin|JMP| marCin label| goto label;
|Marcin|(|
|marciN|)|
|MArciN|{|
|MarcIN|}|
|MARcin|>|
|marCIN|<|
