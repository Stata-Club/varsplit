# varsplit

varsplit is intended for use by programmers who want to split one variable into several variables especially when scraping data from website.

# How to use

Suppose that we now have a dataset which contains names, ages and scores of two courses of several students. But all of the information is in one variable. 
We use the command `input` to simulate data of two students

```
clear
set more off
input str5 var
Sarah
19
89
90
Sam
21
92
89
end
```


Use command `varsplit` to split the variable into 4 variables.

```
varsplit 4
```


Rename the variables

`rename (var1 - var4) (name age course1 course2)`


# Author

Chuntao LI
School of Finance, Zhongnan University of Economics and Law
Wuhan, China
`chtl@zuel.edu.cn`

Yuan XUE
 School of Finance, Zhongnan University of Economics and Law
Wuhan, China
`xueyuan19920310@163.com`


# Also see

help `subinfile`(if installed) 

`stata ssc install subinfile` to install
