# parse.(Int,read(stdin,String)|>split)|>minimum|>println
import strutils, sequtils, sugar
stdin.readLine().splitWhitespace().map(x=>parseint(x)).min.echo
