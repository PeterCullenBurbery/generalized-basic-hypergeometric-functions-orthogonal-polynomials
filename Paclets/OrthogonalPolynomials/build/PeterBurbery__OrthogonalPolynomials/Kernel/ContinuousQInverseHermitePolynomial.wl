(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousQInverseHermitePolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousQInverseHermitePolynomial // ClearAll;

ContinuousQInverseHermitePolynomial[n_, z_, q_] :=
    FunctionExpand[z ^ (n) QHypergeometricPFQ[{q ^ (-n)}, {0}, q, q /
         z^2]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
