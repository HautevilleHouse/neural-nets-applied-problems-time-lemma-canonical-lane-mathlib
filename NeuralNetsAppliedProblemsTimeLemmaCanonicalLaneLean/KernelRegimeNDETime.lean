import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure KernelRegimeModel where
  width : Nat
  ntkKernel : Type
  trainingSteps : Nat
  learningRate : ℝ
  ntkConvergenceTime : ℝ
  targetLoss : ℝ

structure KernelRegimeEvidence (K : KernelRegimeModel) where
  ntkConvergesBeforeZero : K.ntkConvergenceTime < 1e-6
  lossBelowTarget : K.targetLoss < 0.01

def KernelRegimeClosed (K : KernelRegimeModel) : Prop :=
  K.ntkConvergenceTime < 1e-6 ∧ K.targetLoss < 0.01

theorem kernel_regime_closed_from_evidence (K : KernelRegimeModel) (E : KernelRegimeEvidence K) : KernelRegimeClosed K := by
  exact And.intro E.ntkConvergesBeforeZero E.lossBelowTarget

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse