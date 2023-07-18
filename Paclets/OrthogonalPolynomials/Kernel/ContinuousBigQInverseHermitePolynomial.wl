(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`ContinuousBigQInverseHermitePolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ContinuousBigQInverseHermitePolynomial//ClearAll;

ContinuousBigQInverseHermitePolynomial[n_, z_, a_, q_] := 
 FunctionExpand[
  a^(-n) QHypergeometricPFQ[{q^(-n), z/a, 1/(z a)}, {}, q, q^n a^2]]
(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
