import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean

structure GradientFlowConvergencePackage where
  lossFunctionIsConvex : Prop
  stepSizeSchedule : Prop
  convergenceRate : Float
  stationaryPointReached : Prop

structure GradientFlowConvergenceEvidence (P : GradientFlowConvergencePackage) where
  lossFunctionIsConvexClosed : P.lossFunctionIsConvex
  stepSizeScheduleClosed : P.stepSizeSchedule
  stationaryPointReachedClosed : P.stationaryPointReached

def GradientFlowConvergenceClosed (P : GradientFlowConvergencePackage) : Prop :=
  P.lossFunctionIsConvex ∧ P.stepSizeSchedule ∧ P.stationaryPointReached

theorem gradient_flow_convergence_closed_from_evidence
    (P : GradientFlowConvergencePackage) (E : GradientFlowConvergenceEvidence P) :
    GradientFlowConvergenceClosed P := by
  exact And.intro E.lossFunctionIsConvexClosed (And.intro E.stepSizeScheduleClosed E.stationaryPointReachedClosed)

end NeuralNetsAppliedProblemsTimeLemmaCanonicalLaneLean
end HautevilleHouse