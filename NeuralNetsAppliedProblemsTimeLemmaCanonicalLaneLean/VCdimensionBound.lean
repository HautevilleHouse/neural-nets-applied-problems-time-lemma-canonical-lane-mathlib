import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure VCDimensionBoundPackage where
  vcDimension : Nat
  sampleComplexity : Float
  generalizationError : Prop
  finiteVCimpliesLearnable : Prop

structure VCDimensionBoundEvidence (V : VCDimensionBoundPackage) where
  generalizationErrorClosed : V.generalizationError
  finiteVCimpliesLearnableClosed : V.finiteVCimpliesLearnable

def VCDimensionBoundClosed (V : VCDimensionBoundPackage) : Prop :=
  V.generalizationError ∧ V.finiteVCimpliesLearnable

theorem vc_dimension_bound_closed_from_evidence (V : VCDimensionBoundPackage)
    (E : VCDimensionBoundEvidence V) : VCDimensionBoundClosed V := by
  exact And.intro E.generalizationErrorClosed E.finiteVCimpliesLearnableClosed

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse