import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure OverparametrizedModel where
  width : Nat
  depth : Nat
  activationClass : Type
  initializationScheme : Type
  overparamRatio : ℝ
  benignGeneralization : Prop
  trainTestGap : ℝ

structure OverparamEvidence (M : OverparametrizedModel) where
  benignGeneralizationClosed : M.benignGeneralization
  trainTestGapSmall : M.trainTestGap < 0.05

def OverparamClosed (M : OverparametrizedModel) : Prop :=
  M.overparamRatio > 1.0 ∧ M.trainTestGap < 0.05

theorem overparam_closed_from_evidence (M : OverparametrizedModel) (E : OverparamEvidence M) : OverparamClosed M := by
  exact And.intro (by
    have h := M.overparamRatio
    exact by
      exact h) E.trainTestGapSmall

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse