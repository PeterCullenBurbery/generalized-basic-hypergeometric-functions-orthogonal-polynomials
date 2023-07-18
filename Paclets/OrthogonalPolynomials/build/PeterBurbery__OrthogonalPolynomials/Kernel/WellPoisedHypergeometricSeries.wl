(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`WellPoisedHypergeometricSeries;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

WellPoisedHypergeometricSeries // ClearAll;

WellPoisedHypergeometricSeries[a_, b_, numeratorparameters__, base_, 
    argument_] :=
    QHypergeometricPFQ[Join[{b}, {a}, {numeratorparameters}], Table[base
         * a / argument, {argument, Join[{b}, {numeratorparameters}]}], base,
         argument]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
