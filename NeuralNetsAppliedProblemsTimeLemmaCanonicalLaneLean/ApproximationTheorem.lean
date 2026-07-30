import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure UniversalApproximationPackage where
  targetFunctionClass : String
  approximationError : Float
  widthRequirement : Nat
  depthRequirement : Nat
  arbitraryAccuracyAchievable : Prop

structure UniversalApproximationEvidence (U : UniversalApproximationPackage) where
  arbitraryAccuracyAchievableClosed : U.arbitraryAccuracyAchievable

def UniversalApproximationClosed (U : UniversalApproximationPackage) : Prop :=
  U.arbitraryAccuracyAchievable

theorem universal_approximation_closed_from_evidence (U : UniversalApproximationPackage)
    (E : UniversalApproximationEvidence U) : UniversalApproximationClosed U := by
  exact E.arbitraryAccuracyAchievableClosed

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse