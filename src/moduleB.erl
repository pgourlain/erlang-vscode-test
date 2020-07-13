-module(moduleB).


-export([functionB/0]).



functionB() ->
    ok.

% function should appear in problems window
function_test1() ->
          ok.

% functions ends with _test should not appears in problems window
function_test() ->
     ok.

function1_test() ->
     ok.