node-simple-lru-cache
=====================

[![Build Status](https://travis-ci.org/gfestari/node-simple-lru-cache.svg?branch=master)](https://travis-ci.org/gfestari/node-simple-lru-cache) [![Coverage Status](https://img.shields.io/coveralls/gfestari/node-simple-lru-cache.svg)](https://coveralls.io/r/gfestari/node-simple-lru-cache)

It's a very simple and extremely fast lru cache for node.js.

This cache will priorize the latest used keys over the least used keys,
so when a new key is added if the cache is full, the least used key will be removed

## Instalation

    npm install simple-lru-cache

## Usage

````js
    var SimpleCache = require("simple-lru-cache")

    var cache = new SimpleCache({"maxSize":1000})

    //Add an Object
    cache.set("hello","world")

    //Get an Object
    cache.get("hello")

    //Delete an Object
    cache.del("hello")

    //Reset cache
    cache.reset()
````

## Tests

    npm install
    npm test

## Benchmark against lru-cache

    make bench
