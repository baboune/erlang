%% Author: baboune
%% Created: Jul 12, 2012
%% Description: TODO: Add description to myalgo
-module(myalgo).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([qsort/1]).
-export([qsort_opt/1]).

%%
%% API Functions
%%
qsort([]) -> [];
qsort([Pivot|T]) ->
	qsort([X || X <- T, X < Pivot])
    ++ [Pivot] ++
    qsort([X || X <- T, X >= Pivot]).

qsort_opt(L) ->
	qsort_acc(L, []).
%%
%% Local Functions
%%
qsort_acc([], Result)  -> Result;
qsort_acc([Pivot|T], Result) ->
	part_acc(Pivot, T, {[], [Pivot], [] }, Result).

part_acc(_, [], {L, E, G}, Result) ->
	qsort_acc(L, (E ++ qsort_acc(G, Result)));
part_acc(X, [Pivot|T], {L,E,G}, Result) ->
    if
       Pivot < X ->
            part_acc(X, T, {[Pivot | L], E, G}, Result);
        Pivot > X ->
            part_acc(X, T, {L, E, [Pivot | G]}, Result);
        true ->
            part_acc(X, T, {L, [Pivot | E], G}, Result)
    end.