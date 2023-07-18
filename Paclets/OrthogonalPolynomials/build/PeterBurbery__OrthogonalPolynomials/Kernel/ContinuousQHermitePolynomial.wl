(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousQHermitePolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousQHermitePolynomial // ClearAll;

ContinuousQHermitePolynomial[n_, z_, q_] :=
    FunctionExpand[z^n QHypergeometricPFQ[{q ^ (-n), 0}, {}, q, q^n /
         z^2]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
