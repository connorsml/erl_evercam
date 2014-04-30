-module(utils).

-export([make_request/2, make_request/3]).

-include("evercam.hrl").

-type method() :: 'GET' | 'POST'.

-spec make_request(binary(), method()) -> ok.
make_request(Target, Method) ->
  make_request(Target, Method, undefined).

-spec make_request(binary(), method(), binary()) -> ok.
make_request(Target, Method, Param) ->
  Url = <<?API_URL/binary, target/binary>>,
  Headers = [{'Connection', 'close'}, {'Content-Type', 'application/json'}],
  make_request(Url, Headers, Method, Param).

make_request(Url, Headers, 'GET', Param) ->
  ok;
make_request(Url, Headers, 'POST', Param) ->
  ok.
