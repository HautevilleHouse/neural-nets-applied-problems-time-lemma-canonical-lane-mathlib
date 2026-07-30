import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure AttentionMechanismConvergencePackage where
  queryDimension : Nat
  keyDimension : Nat
  softmaxTemperature : Float
  attentionWeightsUnique : Prop
  iterationUntilConvergence : Nat

structure AttentionMechanismConvergenceEvidence (P : AttentionMechanismConvergencePackage) where
  attentionWeightsUniqueClosed : P.attentionWeightsUnique
  iterationBoundPositive : P.iterationUntilConvergence > 0

def AttentionMechanismConvergenceClosed (P : AttentionMechanismConvergencePackage) : Prop :=
  P.attentionWeightsUnique ∧ P.iterationUntilConvergence > 0

theorem attention_mechanism_convergence_closed_from_evidence
    (P : AttentionMechanismConvergencePackage) (E : AttentionMechanismConvergenceEvidence P) :
    AttentionMechanismConvergenceClosed P := by
  exact And.intro E.attentionWeightsUniqueClosed E.iterationBoundPositive

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse