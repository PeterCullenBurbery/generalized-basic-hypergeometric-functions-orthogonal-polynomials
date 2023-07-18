(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousBigQHermitePolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousBigQHermitePolynomial//ClearAll;

ContinuousBigQHermitePolynomial[n_, z_, a_, q_] := 
 a^(-n) QHypergeometricPFQ[{q^(-n), a z, a/z}, {0, 0}, q, q]; 


(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
