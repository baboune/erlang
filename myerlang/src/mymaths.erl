%% Author: baboune
%% Created: Jul 9, 2012
%% Description: TODO: Add description to mymaths
-module(mymaths).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([multiply/2]).
-export([pythag/1]).

%%
%% API Functions
%%
multiply(L, Val) -> 
	[ imult(Val, X) || is_integer(Val), X <- L].

pythag(N) ->
	[ {A, B, C}  ||
	  A <- lists:seq(1, N),
      B <- lists:seq(1, N),
	  C <- lists:seq(1,N),
	  A + B + C =< N,
	  A*A + B*B =:= C*C 
	].

%%
%% Local Functions
%%
imult(Val, X) when is_integer(X) -> Val * X;
imult(_, _) -> throw('only integer is supported').
