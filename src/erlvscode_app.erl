%%%-------------------------------------------------------------------
%% @doc erlvscode public API
%% @end
%%%-------------------------------------------------------------------

-module(erlvscode_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    try my_function() of
        _ -> A = "~", A
    catch
        error:Reason:Stacktrace -> failed
    end,
    erlvscode_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

my_function() ->
    Value = 1 + 1 = 2,
    io:format("Running the code!"),
    {ok, Value}. % <- Set a breakpoint here!
