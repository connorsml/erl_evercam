-module(model).

-export([all/0, all/1, by_vendor/1]).

-spec all() -> ok.
all() ->
  ok.

-spec all(binary()) -> ok.
all(Extra) ->
  ok.

-spec by_vendor(binary()) -> ok.
by_vendor(VID) ->
  ok.


%%%============================================================================
%%% Tests
%%%============================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

-endif.