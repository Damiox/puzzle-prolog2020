# Puzzle 2020 [Prolog]
#
## Introduction
Similarly to what I wrote in https://github.com/Damiox/puzzle-prolog2017 3 years ago: I'm not an expert in Prolog :)

Thus, you'll find that I didn't research how to read a file in Prolog. That's why the dictionary of words (Prolog facts) were generated from a Python script.

## Re-generate the words dictionary
Simply run the following command:
```
python words_preprocess.py > words.pro
```

This will generate all the facts so they can easily be read in Prolog.

## Prerequisites
You need to install SWI Prolog. If you're using Mac, then you may want to try installing it through `brew` as follows:
```
brew install swipl
```

## Considerations
Please take into account, that the program will take some seconds to load the Prolog facts in Memory.
Also, I decided to walk through the dictionary first, because the graph can be very complex IMHO.

## How to run this program

Run the following command:
```
swipl -q -t solutions main.pro > solutions.txt
```

This will generate the set of solutions. For the attached graph (see graph.jpg), I got 458 solution words.
