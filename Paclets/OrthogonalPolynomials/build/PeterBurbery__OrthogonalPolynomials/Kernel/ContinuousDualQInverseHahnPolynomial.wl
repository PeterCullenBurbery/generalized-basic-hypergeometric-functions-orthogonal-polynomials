(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousDualQInverseHahnPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousDualQInverseHahnPolynomial // ClearAll;

ContinuousDualQInverseHahnPolynomial[n_, z_, a_, b_, c_, q_] :=
    FunctionExpand[q ^ (-2 Binomial[n, 2]) (a b c) ^ n QShiftedFactorialFinite[
        {1 / (a b), 1 / (a c)}, q, n] QHypergeometricPFQ[{q ^ (-n), z / a, 1 
        / (z a)}, {1 / (a b), 1 / (a c)}, q, q^n / (b c)]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
