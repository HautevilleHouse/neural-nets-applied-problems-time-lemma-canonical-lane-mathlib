import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure NNAdmittedObject where
  networkArchitecture : String
  trainingTime : ℕ
  convergenceProof : Prop
  generalizationBound : Prop
  conclusion : convergenceProof ∧ generalizationBound

def NNAdmittedClosed (O : NNAdmittedObject) : Prop :=
  O.convergenceProof ∧ O.generalizationBound

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse