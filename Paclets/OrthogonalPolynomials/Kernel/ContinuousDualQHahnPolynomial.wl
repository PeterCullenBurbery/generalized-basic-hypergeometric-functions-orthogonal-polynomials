(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousDualQHahnPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousDualQHahnPolynomial // ClearAll


ContinuousDualQHahnPolynomial[n_, z_, a_, b_, c_, q_] := 
 FunctionExpand[
  a^(-n) QShiftedFactorialFinite[{a b, a c}, q, 
    n] QHypergeometricPFQ[{q^(-n), a z, a/z}, {a b, a c}, q, q]]; 

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
