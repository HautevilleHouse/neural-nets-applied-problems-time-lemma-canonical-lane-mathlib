import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure TimeLemmaPackage where
  timeDomain : Type u
  neuralDynamics : Type v
  convergenceTimeBound : Prop
  invariantUnderArchitecture : Prop
  finiteTimeTermination : Prop

structure TimeLemmaEvidence (T : TimeLemmaPackage) where
  convergenceTimeBoundClosed : T.convergenceTimeBound
  invariantUnderArchitectureClosed : T.invariantUnderArchitecture
  finiteTimeTerminationClosed : T.finiteTimeTermination

def TimeLemmaClosed (T : TimeLemmaPackage) : Prop :=
  T.convergenceTimeBound ∧ T.invariantUnderArchitecture ∧ T.finiteTimeTermination

theorem time_lemma_closed_from_evidence
    (T : TimeLemmaPackage) (E : TimeLemmaEvidence T) :
    TimeLemmaClosed T := by
  exact And.intro E.convergenceTimeBoundClosed
    (And.intro E.invariantUnderArchitectureClosed E.finiteTimeTerminationClosed)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse