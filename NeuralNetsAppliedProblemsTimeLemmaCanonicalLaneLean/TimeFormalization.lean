import NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean.NNAdmittedObject

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure TimeLemmaData where
  layerCount : ℕ
  activationFunctions : String
  lossFunction : String
  optimizer : String
  epochCount : ℕ
  convergenceRate : ℝ

def buildTimeLemma (data : TimeLemmaData) : NNAdmittedObject :=
  {
    networkArchitecture := s!"Dense {data.layerCount}",
    trainingTime := data.epochCount,
    convergenceProof := by
      have h : data.convergenceRate > 0 := by
        calc
          data.convergenceRate = data.convergenceRate := rfl
          _ > 0 := by sorry
      exact h,
    generalizationBound := by
      have h : data.epochCount ≥ 1 := by omega
      exact h,
    conclusion := by
      exact And.intro (by
        have h : data.convergenceRate > 0 := by
          calc
            data.convergenceRate = data.convergenceRate := rfl
            _ > 0 := by sorry
        exact h) (by
        have h : data.epochCount ≥ 1 := by omega
        exact h)
  }

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse