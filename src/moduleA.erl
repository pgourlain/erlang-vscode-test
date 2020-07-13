-module(moduleA).


-export([functionA/0,
    function_test/0]).

-compile(export_all).

functionA() ->
    moduleB:functionB(),
    ok,
    ok.

function_test() ->
     ok.