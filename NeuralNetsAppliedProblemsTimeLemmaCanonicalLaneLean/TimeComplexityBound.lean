import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure TimeComplexityBoundPackage where
  trainingIterations : Nat
  timePerIteration : Float
  totalTimeFinite : Prop
  convergenceGuarantee : Prop

structure TimeComplexityBoundEvidence (B : TimeComplexityBoundPackage) where
  totalTimeFiniteClosed : B.totalTimeFinite
  convergenceGuaranteeClosed : B.convergenceGuarantee

def TimeComplexityBoundClosed (B : TimeComplexityBoundPackage) : Prop :=
  B.totalTimeFinite ∧ B.convergenceGuarantee

theorem time_complexity_bound_closed_from_evidence (B : TimeComplexityBoundPackage)
    (E : TimeComplexityBoundEvidence B) : TimeComplexityBoundClosed B := by
  exact And.intro E.totalTimeFiniteClosed E.convergenceGuaranteeClosed

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse