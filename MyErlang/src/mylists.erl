%% Author: baboune
%% Created: Jul 8, 2012
%% Description: TODO: Add description to mylists
-module(mylists).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([sum/1]).
-export([head/1]).
-export([tail/1]).
-export([last/1]).
-export([element_at/2]).

%%
%% API Functions
%%
sum([H|T]) -> H + sum(T);
sum([])    -> 0.

head([H|_]) -> H;
head([])    -> [].

tail([_|T]) -> T;
tail([])    -> [].

last([_ | T]) -> 
	if
		length(T) =:= 1 -> T;
	    true            -> last(T)
    end;
last([]) -> -1.


element_at([], _)  -> -1;
element_at(L, At) ->
	if 
		length(L) >= At -> element_at_internal(L, At, 1);
        true            -> -1
	end.

%%
%% Local Functions
%%
element_at_internal([H | T], Max_pos, Current) ->
	case Current of
	    Max_pos  -> H;
        _        -> element_at_internal(T, Max_pos, Current + 1)
    end.
