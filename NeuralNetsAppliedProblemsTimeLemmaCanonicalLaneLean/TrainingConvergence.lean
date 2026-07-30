import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.ActivationDynamics

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemma

structure TrainingConvergencePackage
    {P : ActivationDynamicsPackage} where
  learningRateSchedule : Type u
  lossFunction : Type v
  gradientDescentUpdate : Type w
  batchSampling : Prop
  convergenceGuarantee : Prop
  generalizationBound : Prop

structure TrainingConvergenceEvidence
    {P : ActivationDynamicsPackage}
    (T : TrainingConvergencePackage P) where
  convergenceGuaranteeClosed : T.convergenceGuarantee
  generalizationBoundClosed : T.generalizationBound

def TrainingConvergenceClosed
    {P : ActivationDynamicsPackage}
    (T : TrainingConvergencePackage P) : Prop :=
  T.convergenceGuarantee ∧ T.generalizationBound

theorem training_convergence_closed_from_evidence
    {P : ActivationDynamicsPackage}
    (T : TrainingConvergencePackage P)
    (E : TrainingConvergenceEvidence T) : TrainingConvergenceClosed T := by
  exact And.intro E.convergenceGuaranteeClosed E.generalizationBoundClosed

end NeuralNetsAppliedProblemsTimeLemma
end HautevilleHouse