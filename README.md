# mansort
Sort a list using the human as a manual comparer with Merge-insertion

The original project: https://github.com/akirataguchi115/todo-sorter

Well I quit this project again. This time i think i got a tad more far. This time I found Merge-Insertion sort which was currently the fewest known comparisons when the n <= 46 and the fewest amount of comparisons mathematically proven when n <= 22. Sounds good right? And this time PowerShell since no one has this same issue at work, only in free time projects.

Accordin to the Wikipedia article the following sequence of comparison amount is the the algorithm: https://oeis.org/A001768 (picture below). This essentially means I would have to ask the user in my case 161 times to sort my 40 task project list. 161 fucking times. And god has decided that this is the currently least amount of comparisons known to man. 62 prompts in 20 task project list. 62. Mathematically proven.

I'm glad I took another try to this behemoth again. Once again I will remind myself that doing the projects and sometimes manually prioritizing seems to be the fastest and most effective way of getting my projects done.

| n | a(n) |
| - | ---- |
| 1	|	0 |
| 2	|	1 |
| 3	|	3 |
| 4	|	5 |
| 5	|	7 |
| 6	|	10 |
| 7	|	13 |
| 8	|	16 |
| 9	|	19 |
| 10 | 22 |
| 11 | 26 |
| 12 | 30 |
| 13 | 34 |
| 14 | 38 |
| 15 | 42 |
| 16 | 46 |
| 17 | 50 |
| 18 | 54 |
| 19 | 58 |
| 20 | 62 |
| 21 | 66 |
| 22 | 71 |
| 23 | 76 |
| 24 | 81 |
| 25 | 86 |
| 26 | 91 |
| 27 | 96 |
| 28 | 101 |
| 29 | 106 |
| 30 | 111 |
| 31 | 116 |
| 32 | 121 |
| 33 | 126 |
| 34 | 131 |
| 35 | 136 |
| 36 | 141 |
| 37 | 146 |
| 38 | 151 |
| 39 | 156 |
| 40 | 161 |
| 41 | 166 |
| 42 | 171 |
| 43 | 177 |
| 44 | 183 |
| 45 | 189 |
| 46 | 195 |
| 47 | 201 |
| 48 | 207 |
| 49 | 213 |
| 50 | 219 |
