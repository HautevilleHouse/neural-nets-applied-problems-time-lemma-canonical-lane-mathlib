import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure TimeDependentActivationPackage where
  inputDimension : Nat
  hiddenDimension : Nat
  timeScale : Float
  activationFamily : String
  smoothTransition : Prop
  LipschitzConstant : Float
  transitionTimeBound : Float

structure TimeDependentActivationEvidence (P : TimeDependentActivationPackage) where
  smoothTransitionClosed : P.smoothTransition
  LipschitzBoundClosed : P.LipschitzConstant > 0.0
  transitionTimeBoundClosed : P.transitionTimeBound > 0.0

def TimeDependentActivationClosed (P : TimeDependentActivationPackage) : Prop :=
  P.smoothTransition ∧ P.LipschitzConstant > 0.0 ∧ P.transitionTimeBound > 0.0

theorem time_dependent_activation_closed_from_evidence
    (P : TimeDependentActivationPackage) (E : TimeDependentActivationEvidence P) :
    TimeDependentActivationClosed P := by
  exact And.intro E.smoothTransitionClosed (And.intro E.LipschitzBoundClosed E.transitionTimeBoundClosed)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse