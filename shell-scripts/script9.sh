#!/bin/bash

limit=10

  a=0
  b=1

  for ((i = 0; i < limit; i++)); do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
  done

