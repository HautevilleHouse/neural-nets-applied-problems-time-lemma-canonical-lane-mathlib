import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure NeuralNetworkArchitecturePackage where
  layerCount : Nat
  activationFunction : String
  weightSpaceDimension : Nat
  forwardPropagationDefined : Prop
  backpropagationDefined : Prop

structure NeuralNetworkArchitectureEvidence (A : NeuralNetworkArchitecturePackage) where
  forwardPropagationDefinedClosed : A.forwardPropagationDefined
  backpropagationDefinedClosed : A.backpropagationDefined

def NeuralNetworkArchitectureClosed (A : NeuralNetworkArchitecturePackage) : Prop :=
  A.forwardPropagationDefined ∧ A.backpropagationDefined

theorem neural_network_architecture_closed_from_evidence (A : NeuralNetworkArchitecturePackage)
    (E : NeuralNetworkArchitectureEvidence A) : NeuralNetworkArchitectureClosed A := by
  exact And.intro E.forwardPropagationDefinedClosed E.backpropagationDefinedClosed

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse