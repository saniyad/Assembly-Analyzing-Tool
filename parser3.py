import sqlite3 as lite
import sys

from sys import argv
from collections import Counter

script, from_file, to_file = argv

indata = open(from_file)
out_file = open(to_file, 'w')

str1 = indata.readlines()

x = ["cmp", "jg", "mov", "add", "lea", "inc", "jmp"]
y = []
z = [0, 0, 0, 0, 0, 0, 0]

for input_line in str1:
    split_line = input_line.split()

    for split_word in split_line:
        out_file.writelines(split_word)
        out_file.write("\n")

indata = open(from_file)

new_line = indata.readline()
while new_line:
    first3 = new_line[:new_line.find(" ")]
    new_line = indata.readline()

    y.append(first3)
    in_x = False
    for i in range(0, len(x)):
        if first3 == x[i]:
            in_x = True
    if in_x == False:
        x.append(first3)
        z.append(0)

    for i in range(0, len(x)):
        if first3 == x[i]:
            z[i] = z[i] + 1

for elem in y:
    print elem

for i in range(0, len(x)):
    if z[i] != 0:
        print (x[i] + " count: " + str(z[i]))

if from_file == "bubblesort.asm":
    con = lite.connect('bubblesort.db')

    instruction = x[i]
    count = str(z[i])

    params = (instruction, count)

    # labels = [
    #     "Instruction: ",
    #     "Count: "
    # ]

    # params = [raw_input(label) for label in labels]

    with con: 
        cur = con.cursor()
        cur.execute("CREATE TABLE bsort (instruction TEXT, count TEXT)")
        cur.execute("INSERT INTO bsort VALUES (?, ?)", params)

        cur = con.cursor()
        cur.execute("SELECT * FROM bsort")

        rows = cur.fetchall()

        for row in rows:
            print(row)

if from_file == "quicksort.asm":
    con = lite.connect('quicksort.db')

    instruction = ''.join(x)
    count = ''.join(str(e) for e in z)

    params = (instruction, count)

    with con: 
        cur = con.cursor()
        cur.execute("CREATE TABLE qsort (instruction TEXT, count TEXT)")
        cur.execute("INSERT INTO qsort VALUES (?, ?)", params)

        cur = con.cursor()
        cur.execute("SELECT * FROM qsort")

        rows = cur.fetchall()

        for row in rows:
            print(row)

if from_file == "insertionsort.asm":
    con = lite.connect('insertionsort.db')

    instruction = ''.join(x)
    count = ''.join(str(e) for e in z)

    params = (instruction, count)

    with con: 
        cur = con.cursor()
        cur.execute("CREATE TABLE isort (instruction TEXT, count TEXT)")
        cur.execute("INSERT INTO isort VALUES (?, ?)", params)

        cur = con.cursor()
        cur.execute("SELECT * FROM isort")

        rows = cur.fetchall()

        for row in rows:
            print(row)