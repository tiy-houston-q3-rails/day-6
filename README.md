Today's Dictionary
==================

* Struct
* send
* respond_to

Struct
---------

```ruby
Band = Struct.new(:name, :duration)
Band.new("the beatles", 50)
```

Pros:

* Lightweight, data objects
* Initialize is better

Cons:

* Arguments are optional `Band.new "the beatles"`


Send
---------

* Meta Programming
* Sends method to object, just like calling a method
* Can change strings into symbols, for calling methods

PROs:

* Powerful

Cons:

* Hard to understand
* Easy to get wrong
* many wtf's

Respond_to?
----------

* Check if a method is defined on the object
* Can help prevent no-method-errors when using send

Pros:

* Do it whenever using send

Cons:

* Same as send (WTF)


Homework
====================

* Remove all regexs from Week 1 project, replace with ==
* Relax
* Define a class with 1 method defined on it (it should set an @value)
* Dynamically send that object the method defined
* output the @value that was set


* Play [2048](http://gabrielecirulli.github.io/2048/) (or mobile app)
* Create and have fun with html on [Dash](https://dash.generalassemb.ly/) 
