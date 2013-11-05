---
title       : Rocket Ship
subtitle    : Where exponential growth happens
author      : Dan Tam
job         : Software Engineer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}

---

## Agenda

### 1. Rocket ship from the outside
### 2. Stories from Inside a rocket ship
### 3. How to build your own

--- &image_and_quote image:./assets/img/lean_in.jpg

## Rocket ship?

*** quote

<q>If you're offered a seat on a rocket ship, you don't ask what seat. You just get on.</q>

--- &image_and_quote image:./assets/img/shahnameh.jpg

## Exponential Growth

*** quote

<q>
On the checkerboard, one grain of wheat,<br/>
On the first square, then double, Repeat.
</q>

--- &image image:./assets/img/chessboard.png

## How many on each square? <br/> How many up to "n" squares?

--- &image image:./assets/img/moores_law.png

## Moore's Law

--- &image image:./assets/img/dna_cost.png

## Cost of DNA sequencing

--- &image_and_quote image:./assets/img/zuck.jpg

## Zuck's Law

*** quote

<q>Every year people share twice as much online as they did the year before.</q>

---

## Back to wheat on a chess board


### Number of grains in \(t^{th}\) box:
$$
\begin{align}
\huge
x_t = 2^t
\end{align}
$$

### Compound interest:
$$
\begin{align}
\huge
x_t = x_0 \times r^t with\ x_0 = 1, r = 2.
\end{align}
$$

<hr>

###  Number of grains in \(0^{th},\ 1^{th},\ \ldots\ ,\ t^{th}\) boxes:
$$
\begin{aligned}
\Large
\sum_{i=0}^{t} x_t = 2^{t+1} - 1
\end{aligned}
$$

---

## Let's write some python

```r
def math_wiz_wheat_in_box(s, r, times=10):
    return [s * (r ** t) for t in range(times)]

def studious_wheat_in_box(s, r, times=10):
    results = []
    for t in range(times):
        m = s
        for tt in range(t):
            m *= r
        results.append(m)
    return results
```
```r
>>> math_wiz_wheat_in_box(1, 2)
[1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
>>> studious_wheat_in_box(1, 2)
[1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
```

--- &image image:./assets/img/math_studious.png

## How fast are those programs?

---

## What would a person do?

### Re-use result from the previous box.

```r
def dynamic_wheat_in_box(s, r, times=10):
    results = [s]
    for t in range(times - 1):
        results.append(results[-1] * r)
    return results
```

### Run time is essentially the same as math wiz.

### In other words, programming helps you look good.

--- &image_and_quote image:./assets/img/fb_entrance.png

## Inside a rocket ship

*** quote 

<q>We don't build services to make money; we make money to build better services.</q>

--- &image image:./assets/img/fb_hacker_sq.jpg 

## Hacker Square

--- &image image:./assets/img/fb_cafeteria.jpg

## Eat, Drink, Be Merry

--- &image image:./assets/img/fb_office.jpg

## Factory

---

## More tidbits about Facebook

 Dimension | Values
 ---|----------------------------------------------------------------------------
 College Majors | Software Engineering, Staticstics, Math, Economics, Business, Law, Physics, None (High School Deploma)
 Perks | Gym, Sweet Shop, Offsites, Parties, Cell phones, T-shirts, Meals, Shuttle Bus Service, Celebrity visits
 Programming languages | PHP, Objective C, Java, C++, Python
 Tools | Git, Mercurial, Phabricator, Hive
 Daily Active Users | 728,000,000
 Monthly Active Users | 1,190,000,000
 Number of Employees | ~5000

--- &image_and_quote image:./assets/img/bezos.jpg

## Amazon

*** quote

<q>There are two kinds of companies, those that work to try to charge more, and those that work to try to charge less.</q>

--- &image image:./assets/img/feinman.png

## Spelling Correction for Product Search

### 1. Users often send queries with typos.
### 2. Typos make it difficult to find relevant documents.
### 3. Suggest alternate spellings, sometimes search directly using them.

<hr/>

--- &image image:assets/img/noisy_channel.jpg

## Noisy Channel

*** text

### Given message at destination, re-construct message at source.

$$
\begin{aligned}
\Large
P(src\mid dest) 
= P(dest\mid src) \times P(src) \div P(dest)
\end{aligned}
$$

### Best message at source can be computed by two factors:

#### 1. Language Model: \(P(src)\)
#### 2. Error Model: \(P(dest\mid src)\)

--- &image image:assets/img/norvig.png

## Learn from Peter Norvig

*** text 

<div style='font-size:50%;float:right;'>
  http://norvig.com/spell-correct.html 
</div>


---

## Lessons learned from spelling correction

### 1. Users are helpful - count them properly.
### 2. Bayes' rule is useful - used for spelling and general search ranking.
### 3. A few lines of code can do a lot.

---

<q>The best way to predict the future<br/> is to invent it.</q>

<div style='float:right;'>
  Alan Kay 
</div>

---

## Watch out for rocket ships in your career

### 1. Don't pick a skill that will be obsolete (e.g. archer, taxi driver)
### 2. Make use of rocket ships (e.g. musicians using youtube)
### 3. Work on one

--- &two_images image1:./assets/img/down_one_percent.png image2:./assets/img/up_one_percent.png

## Try to get better every day


