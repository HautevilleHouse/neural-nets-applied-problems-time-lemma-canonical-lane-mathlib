import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.TrainingConvergence
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.ActivationDynamics

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemma

structure NeuralTangentKernelPackage
    {A : ActivationDynamicsPackage}
    {T : TrainingConvergencePackage A} where
  kernelMatrix : Type u
  kernelEigenvalues : Type v
  kernelStabilization : Prop
  kernelLinearization : Prop
  kernelConvergenceRate : Prop

structure NeuralTangentKernelEvidence
    {A : ActivationDynamicsPackage}
    {T : TrainingConvergencePackage A}
    (K : NeuralTangentKernelPackage T) where
  kernelStabilizationClosed : K.kernelStabilization
  kernelLinearizationClosed : K.kernelLinearization
  kernelConvergenceRateClosed : K.kernelConvergenceRate

def NeuralTangentKernelClosed
    {A : ActivationDynamicsPackage}
    {T : TrainingConvergencePackage A}
    (K : NeuralTangentKernelPackage T) : Prop :=
  K.kernelStabilization ∧ K.kernelLinearization ∧ K.kernelConvergenceRate

theorem neural_tangent_kernel_closed_from_evidence
    {A : ActivationDynamicsPackage}
    {T : TrainingConvergencePackage A}
    (K : NeuralTangentKernelPackage T)
    (E : NeuralTangentKernelEvidence K) : NeuralTangentKernelClosed K := by
  exact And.intro E.kernelStabilizationClosed
    (And.intro E.kernelLinearizationClosed E.kernelConvergenceRateClosed)

end NeuralNetsAppliedProblemsTimeLemma
end HautevilleHouse