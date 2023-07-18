(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`QShiftedFactorialInfinite;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

QShiftedFactorialInfinite // ClearAll;

QShiftedFactorialInfinite[a_, q_] :=
    Product[QPochhammer[Part[a, i], q], {i, 1, Length[a]}];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
