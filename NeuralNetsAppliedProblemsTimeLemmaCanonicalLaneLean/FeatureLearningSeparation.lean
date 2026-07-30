import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure FeatureLearningModel where
  layers : Nat
  hiddenUnits : List Nat
  featureRankList : List Nat
  labelComplexity : ℝ
  generalizationGap : ℝ
  spuriousCorrelationRatio : ℝ

structure FeatureLearningEvidence (F : FeatureLearningModel) where
  rankSufficient : F.featureRankList.all (fun r => r ≥ 10)
  spuriousLow : F.spuriousCorrelationRatio < 0.2
  generalizationGapSmall : F.generalizationGap < 0.1

def FeatureLearningClosed (F : FeatureLearningModel) : Prop :=
  F.generalizationGap < 0.1 ∧ F.spuriousCorrelationRatio < 0.2

theorem feature_learning_closed_from_evidence (F : FeatureLearningModel) (E : FeatureLearningEvidence F) : FeatureLearningClosed F := by
  exact And.intro E.generalizationGapSmall E.spuriousLow

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse