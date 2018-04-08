{smcl}
{* 15Jan2017}{...}
{hi:help varsplit}
{hline}

{title:Title}

{phang}
{bf:varsplit} {hline 2} varsplit is intended for use by programmers who want to split one variable into several variables especially when scraping data from website.


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:varsplit}{it: number}

{phang}
{it:number} must be a positive integer, which specify the number of variables you split the variable into.

{marker overview}{...}
{p 4 8 2}
Overview

        {c TLC}{hline 5}{c TRC}
        {c |} {it:var} {c |}                  {c TLC}{hline 12}{c TRC}
        {c |}{hline 5}{c |}                  {c |} {it:var1}  {it:var2} {c |}
        {c |} x1  {c |}    varsplit 2    {c |}{hline 12}{c |}
        {c |} x2  {c |}   <{hline 11}>  {c |}  x1    x2  {c |}
        {c |} x3  {c |}                  {c |}  x3    x4  {c |}
        {c |} x4  {c |}                  {c BLC}{hline 12}{c BRC}
        {c BLC}{hline 5}{c BRC}



{marker description}{...}
{title:Description}

{pstd}
{cmd:varsplit} help us to split one variable into several variables, this module is useful especially when you scrape data from website.{p_end}



{marker example}{...}
{title:Example}

{pstd}
Suppose that we now have a dataset which contains names, ages and scores of two courses of several students. But all of the information is in one variable. 
We use the command {cmdab:input} to simulate data of two students

{phang}
{stata `"clear"'}
{p_end}

{phang}
{stata `"set more off"'}
{p_end}

{phang}
{stata `"input str5 var"'}
{p_end}

{phang}
{stata `""Sarah""'}
{p_end}

{phang}
{stata `""19""'}
{p_end}

{phang}
{stata `""89""'}
{p_end}

{phang}
{stata `""90""'}
{p_end}

{phang}
{stata `""Sam""'}
{p_end}

{phang}
{stata `""21""'}
{p_end}

{phang}
{stata `""92""'}
{p_end}

{phang}
{stata `""89""'}
{p_end}

{phang}
{stata `"end"'}
{p_end}

{pstd}
Use command {cmdab:varsplit} to split the variable into 4 variables.

{phang}
{stata `"varsplit 4"'}
{p_end}

{pstd}
Rename the variables

{phang}
{stata `"rename (var1 - var4) (name age course1 course2)"'}
{p_end}


{title:Author}

{pstd}Chuntao LI{p_end}
{pstd}School of Finance, Zhongnan University of Economics and Law{p_end}
{pstd}Wuhan, China{p_end}
{pstd}chtl@zuel.edu.cn{p_end}

{pstd}Yuan XUE{p_end}
{pstd} School of Finance, Zhongnan University of Economics and Law{p_end}
{pstd}Wuhan, China{p_end}
{pstd}xueyuan19920310@163.com{p_end}


{title:Also see}

{synoptset 30 }{...}
{synopt:{help subinfile} (if installed)} {stata ssc install subinfile} (to install){p_end}



