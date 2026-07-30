import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemma

structure ActivationDynamicsPackage where
  activationFunction : Type u
  timeParameter : Type v
  stateSpace : Type w
  forwardPass : timeParameter -> stateSpace -> stateSpace
  gradientFlow : timeParameter -> stateSpace -> stateSpace
  lipschitzCondition : Prop
  convergenceRate : Prop
  universalApproximation : Prop

structure ActivationDynamicsEvidence (P : ActivationDynamicsPackage) where
  lipschitzConditionClosed : P.lipschitzCondition
  convergenceRateClosed : P.convergenceRate
  universalApproximationClosed : P.universalApproximation

def ActivationDynamicsClosed (P : ActivationDynamicsPackage) : Prop :=
  P.lipschitzCondition ∧ P.convergenceRate ∧ P.universalApproximation

theorem activation_dynamics_closed_from_evidence
    (P : ActivationDynamicsPackage) (E : ActivationDynamicsEvidence P) :
    ActivationDynamicsClosed P := by
  exact And.intro E.lipschitzConditionClosed
    (And.intro E.convergenceRateClosed E.universalApproximationClosed)

end NeuralNetsAppliedProblemsTimeLemma
end HautevilleHouse