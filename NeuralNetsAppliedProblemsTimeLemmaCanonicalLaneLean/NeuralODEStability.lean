import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure NeuralODEStabilityPackage where
  dynamicsLipschitz : Prop
  timeStepPositive : Float
  stabilityMargin : Float
  forwardInvariance : Prop

structure NeuralODEStabilityEvidence (P : NeuralODEStabilityPackage) where
  dynamicsLipschitzClosed : P.dynamicsLipschitz
  timeStepPositiveClosed : P.timeStepPositive > 0.0
  forwardInvarianceClosed : P.forwardInvariance

def NeuralODEStabilityClosed (P : NeuralODEStabilityPackage) : Prop :=
  P.dynamicsLipschitz ∧ P.timeStepPositive > 0.0 ∧ P.forwardInvariance

theorem neural_ode_stability_closed_from_evidence
    (P : NeuralODEStabilityPackage) (E : NeuralODEStabilityEvidence P) :
    NeuralODEStabilityClosed P := by
  exact And.intro E.dynamicsLipschitzClosed (And.intro E.timeStepPositiveClosed E.forwardInvarianceClosed)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse