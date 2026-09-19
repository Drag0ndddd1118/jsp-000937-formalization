import ErdosProblems.Erdos1130

open Erdos1130

/--
JSP-000937: Which interpolation nodes maximize the smallest peak error-amplification
factor among intervals between consecutive nodes?
Erdős Problem #1130 (de Boor & Pinkus 1978).

This standalone Lean 4 verification certifies the resolution of the free-node
formulation of Erdős Problem 1130, proving that equioscillation does not characterize
all global maximizers of the minimum gap peak of the Lebesgue function by exhibiting
a three-node maximizer without equal gap peaks.
-/
theorem jsp_000937 :
    ∃ X : NodeConfiguration 3,
      IsUpsilonMaximizer X ∧ ¬ GapPeaksEqual X :=
  not_erdos_1130

#print axioms jsp_000937
