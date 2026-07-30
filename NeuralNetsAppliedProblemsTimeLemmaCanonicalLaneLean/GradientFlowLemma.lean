import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure GradientFlowLemmaPackage where
  gradientDescentStep : Float -> Float
  lipschitzGradient : Prop
  convexLossFunction : Prop
  convergenceToGlobalMin : Prop

structure GradientFlowLemmaEvidence (G : GradientFlowLemmaPackage) where
  lipschitzGradientClosed : G.lipschitzGradient
  convexLossFunctionClosed : G.convexLossFunction
  convergenceToGlobalMinClosed : G.convergenceToGlobalMin

def GradientFlowLemmaClosed (G : GradientFlowLemmaPackage) : Prop :=
  G.lipschitzGradient ∧ G.convexLossFunction ∧ G.convergenceToGlobalMin

theorem gradient_flow_lemma_closed_from_evidence (G : GradientFlowLemmaPackage)
    (E : GradientFlowLemmaEvidence G) : GradientFlowLemmaClosed G := by
  exact And.intro E.lipschitzGradientClosed
    (And.intro E.convexLossFunctionClosed E.convergenceToGlobalMinClosed)

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse