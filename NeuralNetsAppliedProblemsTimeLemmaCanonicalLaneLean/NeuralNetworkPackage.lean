import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure NeuralNetworkPackage where
  layerCount : Nat
  activationFunction : Type u
  weightSpace : Type v
  trainingSampleSpace : Type w
  lossFunction : Type x
  forwardPassDefined : Prop
  backpropagationDefined : Prop
  trainingConvergenceGuarantee : Prop

structure NeuralNetworkEvidence (N : NeuralNetworkPackage) where
  forwardPassDefinedClosed : N.forwardPassDefined
  backpropagationDefinedClosed : N.backpropagationDefined
  trainingConvergenceGuaranteeClosed : N.trainingConvergenceGuarantee

def NeuralNetworkClosed (N : NeuralNetworkPackage) : Prop :=
  N.forwardPassDefined ∧ N.backpropagationDefined ∧ N.trainingConvergenceGuarantee

theorem neural_network_closed_from_evidence
    (N : NeuralNetworkPackage) (E : NeuralNetworkEvidence N) :
    NeuralNetworkClosed N := by
  exact And.intro E.forwardPassDefinedClosed
    (And.intro E.backpropagationDefinedClosed E.trainingConvergenceGuaranteeClosed)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse