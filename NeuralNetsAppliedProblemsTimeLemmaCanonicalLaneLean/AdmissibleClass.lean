import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : NNAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NNAdmittedClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse