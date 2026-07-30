import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.NeuralNetworkPackage
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.TimeLemmaPackage
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.AppliedProblemBridge

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

def ConstrainedNeuralNetsTimeLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_nets_time_lemma_endgame (A : AdmissibleClass) :
    ConstrainedNeuralNetsTimeLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse