%% Author: baboune
%% Created: Jul 9, 2012
%% Description: TODO: Add description to anagram
-module(anagram).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([anagram/1]).

%%
%% API Functions
%%

%% Invert a String, or list.
anagram([]) -> [];
anagram(L)  ->
	anagram_acc(L, []).

%%
%% Local Functions
%%
anagram_acc([], Result) -> Result;
anagram_acc([H|T], Result) ->
    anagram_acc(T, [H | Result]).

