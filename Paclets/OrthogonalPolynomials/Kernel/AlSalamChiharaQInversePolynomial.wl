(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`AlSalamChiharaQInversePolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

AlSalamChiharaQInversePolynomial // ClearAll

AlSalamChiharaQInversePolynomial[n_, z_, a_, b_, q_] :=
  FunctionExpand[q ^ (-Binomial[n, 2]) (-b) ^ n QShiftedFactorialFinite[
    {1 / (a b)}, q, n] QHypergeometricPFQ[{q ^ (-n), z / a, 1 / (z a)}, {
    1 / (a b)}, q, q^n a / b]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
