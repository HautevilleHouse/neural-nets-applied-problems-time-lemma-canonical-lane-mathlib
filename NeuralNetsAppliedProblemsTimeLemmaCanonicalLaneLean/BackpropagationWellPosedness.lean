import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure BackpropagationWellPosednessPackage where
  activationDifferentiable : Prop
  lossFunctionDifferentiable : Prop
  gradientBounded : Prop
  learningRatePositive : Float

structure BackpropagationWellPosednessEvidence (P : BackpropagationWellPosednessPackage) where
  activationDifferentiableClosed : P.activationDifferentiable
  lossFunctionDifferentiableClosed : P.lossFunctionDifferentiable
  gradientBoundedClosed : P.gradientBounded
  learningRatePositiveClosed : P.learningRatePositive > 0.0

def BackpropagationWellPosednessClosed (P : BackpropagationWellPosednessPackage) : Prop :=
  P.activationDifferentiable ∧ P.lossFunctionDifferentiable ∧ P.gradientBounded ∧ P.learningRatePositive > 0.0

theorem backpropagation_well_posedness_closed_from_evidence
    (P : BackpropagationWellPosednessPackage) (E : BackpropagationWellPosednessEvidence P) :
    BackpropagationWellPosednessClosed P := by
  exact And.intro E.activationDifferentiableClosed
    (And.intro E.lossFunctionDifferentiableClosed
      (And.intro E.gradientBoundedClosed E.learningRatePositiveClosed))

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse