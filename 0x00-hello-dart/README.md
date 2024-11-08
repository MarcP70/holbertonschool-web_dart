    Project: Dart - Hello Dart | Holberton Laval, France Intranet

**Resources**
=============

Read or watch:

[Dart](/rltoken/WNpOJ2AUenA9U4Zwcm_P2g "Dart")

[Get the Dart](/rltoken/sM_WvB3D7zy-KbovNuNMaw "Get the Dart")

[A tour of the Dart language](/rltoken/vv_oZcYG0c2MBKiMJArr6w "A tour of the Dart language")

[Dart documentation](/rltoken/pd6e7KFw3x3SAoePOGdSGw "Dart documentation")

[Write command-line apps](/rltoken/QG7qNMZe3rWPDmPuzQvqig "Write command-line apps")

[Dart compile](/rltoken/pRE-nsJH9vc3ncCv5LjBKw "Dart compile")

[Dart Pad](/rltoken/4SWHgxzHezGdGngtpIpOAA "Dart Pad")

Installation
------------

sudo apt update && sudo apt upgrade

sudo apt update
sudo apt install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /usr/share/keyrings/dart-archive-keyring.gpg'
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/dart-archive-keyring.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update
sudo apt install dart

nano ~/.bashrc
export PATH="$PATH:/usr/lib/dart/bin"
source ~/.bashrc

dart --version



Tasks
-----

### 0\. Hello Holberton!

mandatory

Write a dart program that print `Hello Holberton!` followed by a new line.

*   Use the function `print`

```
youssef@Holberton/Dart$ dart 0-hello_holberton.dart
Hello Holberton!

youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `0-hello_holberton.dart`

**0/1** pt

### 1\. The Quotes

mandatory

Write a Dart program that prints exactly `"Programming is like building a multilingual puzzle`,

*   followed by a new line.

*   Use the function `print`

```
youssef@Holberton/Dart$ dart 1-quotes.dart
"Programming is like building a multilingual puzzle

youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `1-quotes.dart`

**0/1** pt

### 2\. Print Number

mandatory

Complete this [source code](/rltoken/p5XNTpuWaqbIsOuJSGYOxg "source code") in order to print the integer stored in the variable number, followed by Battery street, followed by a new line.

*   The output of the script should be:
    *   the number, followed by `Battery street`,
    *   followed by a new line
*   You are not allowed to cast the variable number into a string
*   Your code must be 4 lines long

```
youssef@Holberton/Dart$ dart 2-print_number.dart
98 Battery street

youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `2-print_number.dart`

**0/2** pts

### 3\. Print Doubles

mandatory

Complete this [source code](/rltoken/gfSsUGZENvzTxTL4-XQtVQ " source code") in order to print the doubles stored in the variable number with a precision of 2 digits.

*   The output of the program should be:
    *   `Double:` followed by the double with only 2 digits
    *   followed by a new line

```
youssef@Holberton/Dart$ dart 3-print_double.dart
Double: 3.14

youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `3-print_double.dart`

**0/2** pts

### 4\. Print string

mandatory

Complete this [source code](/rltoken/WoBtS9BwrpnBtyvHzgkYBw "source code") in order to print 3 times a string stored in the variable str, followed by its first 9 characters.

*   The output of the program should be:
    *   3 times the value of str
    *   followed by a new line and the 9 first characters of str
    *   followed by a new line
*   You are not allowed to use any loops or conditional statement
*   Your program should be maximum 5 lines long

```
youssef@Holberton/Dart$ dart 4-print_string.dart > output
youssef@Holberton/Dart$ cat -e output
Holberton SchoolHolberton SchoolHolberton School$
Holberton$
$
youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `4-print_string.dart`

**0/2** pts

### 5\. Assertion

mandatory

Complete this [source code](/rltoken/W-9UbIaeSkYuGUTn2CLZ8A "source code") in order to make it check if the number is bigger or equal to 80 print `You Passed` otherwise the output should be `Uncaught Error: Assertion failed: "The score must be bigger or equal to 80`

*   You are not allowed to use IF/ELSE

```
youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 79
Unhandled exception:
'file:/youssef@Holberton/Dart/5-assertion.dart': Failed assertion: line 3 pos 10: 'nb >= 80': The score must be bigger or equal to 80
#0      _AssertionError._doThrowNew (dart:core-patch/errors_patch.dart:51:61)
#1      _AssertionError._throwNew (dart:core-patch/errors_patch.dart:40:5)
#2      main (file:/youssef@Holberton/Dart/5-assertion.dart:3:10)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:32)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)

youssef@Holberton/Dart$ dart --enable-asserts 5-assertion.dart 80
You Passed
youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `5-assertion.dart`

**0/2** pts

### 6\. Positive anything is better than negative nothing

mandatory

Write a dart Program That given an argument ,determine if its positive or negative

*   The variable number will store as a string you should converted to integer
*   The output of the program should be:
*   The number, followed by

    *   if the number is greater than 0: `is positive`
    *   if the number is 0: `is zero`
    *   if the number is less than 0:`is negative`

```
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -4
-4 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 0
0 is zero
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -3
-3 is negative
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 10
10 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart 6
6 is positive
youssef@Holberton/Dart$ dart 6-positive_or_negative.dart -10
-10 is negative
youssef@Holberton/Dart$
```

**Repo:**

*   GitHub repository: `holbertonschool-web_dart`
*   Directory: `0x00-hello-dart`
*   File: `6-positive_or_negative.dart`

**0/3** pts
