import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.NeuralTangentKernel
import HautevilleHouse.NeuralNetsAppliedProblemsTimeLemma.MeanFieldLimit

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemma

def ConstrainedTimeLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_time_lemma_endgame (A : AdmissibleClass) :
    ConstrainedTimeLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralNetsAppliedProblemsTimeLemma
end HautevilleHouse