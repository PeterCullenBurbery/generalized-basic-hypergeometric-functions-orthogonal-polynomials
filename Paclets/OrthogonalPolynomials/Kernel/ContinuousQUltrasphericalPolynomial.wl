(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousQUltrasphericalPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousQUltrasphericalPolynomial // ClearAll;

ContinuousQUltrasphericalPolynomial[n_, z_, \[Beta]_, q_] :=
    QPochhammer[\[Beta], q, n] / QPochhammer[q, q, n] z^n QHypergeometricPFQ[
        {q ^ (-n), \[Beta]}, {1 / \[Beta] q ^ (1 - n)}, q, q / (\[Beta] z^2)]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
