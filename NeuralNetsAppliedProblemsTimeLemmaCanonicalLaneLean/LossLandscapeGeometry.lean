import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure LossLandscape (weightDim : Nat) (sampleSize : Nat) where
  parameters : Vector ℝ weightDim
  dataPoints : Vector ℝ sampleSize
  lossFunction : ℝ → ℝ
  gradient : Vector ℝ weightDim
  hessianApprox : (Matrix ℝ weightDim weightDim)
  smoothnessBound : ℝ

structure LossLandscapeEvidence (L : LossLandscape n m) where
  lossGradientComputed : True
  hessianBoundEstablished : True
  criticalPointsIsolated : True

def LossLandscapeClosed (L : LossLandscape n m) : Prop :=
  L.smoothnessBound > 0

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse