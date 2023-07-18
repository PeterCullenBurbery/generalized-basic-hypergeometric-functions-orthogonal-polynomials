(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousQJacobiPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousQJacobiPolynomial // ClearAll;

ContinuousQJacobiPolynomial[n_, z_, \[Alpha]_, \[Beta]_, q_] :=
    QPochhammer[q ^ (\[Alpha] + 1), q, n] / (QPochhammer[q, q, n]) FunctionExpand[
        QHypergeometricPFQ[{q ^ (-n), q ^ (n + \[Alpha] + \[Beta] + 1), q ^ (
        \[Alpha] / 2 + 1/4) z, q ^ (\[Alpha] / 2 + 1/4) / z}, {q ^ (\[Alpha] 
        + 1), -q ^ ((1 + \[Alpha] + \[Beta]) / 2), -q ^ ((2 + \[Alpha] + \[Beta]
        ) / 2)}, q, q]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
