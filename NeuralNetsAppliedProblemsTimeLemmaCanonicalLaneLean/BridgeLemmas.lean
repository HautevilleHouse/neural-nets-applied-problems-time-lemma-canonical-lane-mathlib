import NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NNAdmittedClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse