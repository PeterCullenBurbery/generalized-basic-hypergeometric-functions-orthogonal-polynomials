(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`VeryWellPoisedBasicHypergeometricSeries;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

VeryWellPoisedBasicHypergeometricSeries // ClearAll;

VeryWellPoisedBasicHypergeometricSeries[a_, b_, numeratorparameters__,
     base_, argument_] :=
    QHypergeometricPFQ[{b, base Sqrt[a], -base Sqrt[a], a, numeratorparameters
        }, Join[{Sqrt[a], -Sqrt[a]}, Table[base a / argument, {argument, Join[
        {b}, {numeratorparameters}]}]], base, argument]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
