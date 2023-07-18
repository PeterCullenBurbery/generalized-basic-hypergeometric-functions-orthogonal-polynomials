(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`OrthogonalPolynomials`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`OrthogonalPolynomials`AskeyWilsonPolynomial;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

AskeyWilsonPolynomial // ClearAll;

AskeyWilsonPolynomial[n_, x_, a_, b_, c_, d_, q_] :=
  FunctionExpand[a ^ (-n) QShiftedFactorialFinite[{a b, a c, a d}, q, n] QHypergeometricPFQ[
    {q ^ (-n), a b c d q ^ (n - 1), a Exp[I ArcCos[x]], a Exp[-I ArcCos[x
    ]]}, {a b, a c, a d}, q, q]];

AskeyWilsonPolynomial[n_, z_, a_, b_, c_, d_, q_] :=
  FunctionExpand[a ^ (-n) QShiftedFactorialFinite[{a b, a c, a d}, q, n] QHypergeometricPFQ[
    {q ^ (-n), a b c d q ^ (n - 1), a z, a / z}, {a b, a c, a d}, q, q]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
