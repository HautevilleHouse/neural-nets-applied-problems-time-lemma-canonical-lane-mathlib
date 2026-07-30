import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.ActivationDynamics

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemma

structure MeanFieldLimitPackage
    {A : ActivationDynamicsPackage} where
  particleSystem : Type u
  meanFieldEquation : Type v
  populationDensity : Type w
  infiniteWidthLimit : Prop
  lawOfLargeNumbers : Prop
  fluctuationBound : Prop

structure MeanFieldLimitEvidence
    {A : ActivationDynamicsPackage}
    (M : MeanFieldLimitPackage A) where
  infiniteWidthLimitClosed : M.infiniteWidthLimit
  lawOfLargeNumbersClosed : M.lawOfLargeNumbers
  fluctuationBoundClosed : M.fluctuationBound

def MeanFieldLimitClosed
    {A : ActivationDynamicsPackage}
    (M : MeanFieldLimitPackage A) : Prop :=
  M.infiniteWidthLimit ∧ M.lawOfLargeNumbers ∧ M.fluctuationBound

theorem mean_field_limit_closed_from_evidence
    {A : ActivationDynamicsPackage}
    (M : MeanFieldLimitPackage A)
    (E : MeanFieldLimitEvidence M) : MeanFieldLimitClosed M := by
  exact And.intro E.infiniteWidthLimitClosed
    (And.intro E.lawOfLargeNumbersClosed E.fluctuationBoundClosed)

end NeuralNetsAppliedProblemsTimeLemma
end HautevilleHouse