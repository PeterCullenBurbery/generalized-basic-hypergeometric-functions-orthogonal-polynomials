(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`QShiftedFactorialFinite;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

QShiftedFactorialFinite // ClearAll;

QShiftedFactorialFinite[a_, q_, n_] :=
    Product[QPochhammer[Part[a, i], q, n], {i, 1, Length[a]}];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
