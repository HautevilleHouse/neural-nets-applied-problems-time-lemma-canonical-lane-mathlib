import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.NeuralNetworkPackage
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.TimeLemmaPackage

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure AppliedProblemBridge (N : NeuralNetworkPackage) (T : TimeLemmaPackage) where
  networkToTimeLemmaMapping : Prop
  guaranteeTransfer : Prop
  bridgeClosedWitness : networkToTimeLemmaMapping ∧ guaranteeTransfer

structure AppliedProblemBridgeEvidence {N : NeuralNetworkPackage} {T : TimeLemmaPackage}
    (B : AppliedProblemBridge N T) where
  networkToTimeLemmaMappingClosed : B.networkToTimeLemmaMapping
  guaranteeTransferClosed : B.guaranteeTransfer

def AppliedProblemBridgeClosed {N : NeuralNetworkPackage} {T : TimeLemmaPackage}
    (B : AppliedProblemBridge N T) : Prop :=
  B.networkToTimeLemmaMapping ∧ B.guaranteeTransfer

theorem applied_problem_bridge_closed_from_evidence
    {N : NeuralNetworkPackage} {T : TimeLemmaPackage}
    (B : AppliedProblemBridge N T) (E : AppliedProblemBridgeEvidence B) :
    AppliedProblemBridgeClosed B := by
  exact And.intro E.networkToTimeLemmaMappingClosed E.guaranteeTransferClosed

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse