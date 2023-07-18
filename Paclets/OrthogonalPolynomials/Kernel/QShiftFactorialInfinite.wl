(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`QShiftFactorialInfinite;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

QShiftFactorialInfinite // ClearAll;

QShiftFactorialInfinite[a_, q_] :=
    Product[QPochhammer[Part[a, i], q], {i, 1, Length[a]}];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
