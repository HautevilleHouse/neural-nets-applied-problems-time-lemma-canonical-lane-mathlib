import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure ConvergenceRatePackage where
  learningRateSchedule : String
  lossDecreaseRate : Float
  exponentialConvergence : Prop
  polynomialConvergence : Prop

structure ConvergenceRateEvidence (C : ConvergenceRatePackage) where
  exponentialConvergenceClosed : C.exponentialConvergence
  polynomialConvergenceClosed : C.polynomialConvergence

def ConvergenceRateClosed (C : ConvergenceRatePackage) : Prop :=
  C.exponentialConvergence ∨ C.polynomialConvergence

theorem convergence_rate_closed_from_evidence (C : ConvergenceRatePackage)
    (E : ConvergenceRateEvidence C) : ConvergenceRateClosed C := by
  cases' E with hExp hPol
  · exact Or.inl hExp
  · exact Or.inr hPol

end HautevilleHouse.NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse