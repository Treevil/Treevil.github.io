---
layout: post
title: Javascript Log - Breve Guida
description: Una breve guida sul log in Javascript
summary: In questa guida impareremo ad usare Javascript log in modo molto swag
tags: [js, js-debug]
---

Lorem Ipsum is simply dummy text of the printing and typesetting industry.


## Semantics Logging

{% highlight python %}
import urllib2
[...]
{% endhighlight %}

## Advanced Log 

Log può prendere una lista infinita di argomenti

```javascript
console.log('Normal Log', 123, 'hey theere!')
```

Possiamo anche fare una interpolazionne della stringa come:

```javascript
console.log('Ciao sono %s, ho %d anni e questo è il mio oggetto: ', 'Trevor', 99, {obj:'obj'});
```

Nota, funzionan solo se il primo argomennto è una stringa e da in ordine gli argomenti.

CSS output:

```javascript
console.log('this is my %coutput ', 'background: red; font-size: 44px');
```

## Grouping and Nesting Console Log Output

In Javascript gli elmenti possono essere raggruppati.

```javascript
for(let i = 0; i < 100; i += 1) {
    console.groupCollapsed('Index of loop:', i) // or console.group per un gruppo espanso nella connsole.
    console.log('Number greater thhan 10?', num > 10);
    console.groupEnd();
}
```

**Nota:** I gruppi possono essere innestati tra loro.

## console.assert

Utile utilizzo per cercare errori, ma non blocca il fusso di codice.

```javascript
let foo = undefined;

console.assert(foo, 'foo was not set!');
// Ritorna errore
console.log(foo.toUpperCase());
// Viene lanciato lo stesso e lancia un errore.
```


## console.count

Contare quante volte viene lanciata un istruzione

```javascript
for (let index = 0; index < 100; index++) {
    const num = Math.random() * 100;
    (num > 50)? 
        console.count('Greater than 50') :
        console.count('Less than 50');
}

/*
[...]
Greater then 50: 45
Greater then 50: 46
less then 50: 54

*/
```

## Logging Timing Data to te Console

Misurare performance

```javascript

console.time('key-label');
const array = [];
for (let index = 0; index < 10000; index++) {
    array.push(index);
}
console.timeEnd('key-label');

/*
[...]
key-label: 0.03 ms
*/
```

## Logging Pretty-Printring Tabular Data to te Console

```javascript

// Obj può essere un array o un oggetto, e columns sono le colonne che vogliamo stampare. Se passiamo un array vuoto [], ritorna in colonna solo gli indici.
console.table(obj, columns)
```

@TODO: Add with fireship javascript console log

## Stack trace 
 console.trace();
