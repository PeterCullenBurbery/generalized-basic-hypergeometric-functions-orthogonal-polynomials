(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`AlSalamChiharaPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PeterBurbery`OrthogonalPolynomials`AlSalamChiharaPolynomial // ClearAll;

PeterBurbery`OrthogonalPolynomials`AlSalamChiharaPolynomial[n_, z_, a_,
     b_, q_] :=
    FunctionExpand[a ^ (-n) PeterBurbery`OrthogonalPolynomials`QShiftedFactorialFinite[
        {a, b}, q, n] QHypergeometricPFQ[{q ^ (-n), a z, a / z}, {a b, 0}, q,
         q]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
