(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ModifiedThetaFunction;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ModifiedThetaFunction // ClearAll;

ModifiedThetaFunction[a_, q_] :=
    Product[QPochhammer[Part[a, i], q] QPochhammer[q / Part[a, i], q],
         {i, 1, Length[a]}];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
