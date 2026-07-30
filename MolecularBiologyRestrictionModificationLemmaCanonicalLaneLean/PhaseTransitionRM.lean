import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure PhaseTransitionRMPackage where
  densityBacteria : ℝ
  densityPhage : ℝ
  restrictionEfficiency : ℝ
  modificationEfficiency : ℝ
  criticalThreshold : ℝ
  phaseDiagram : Prop
  bistabilityRegion : Prop
  limitCycleExistence : Prop

structure PhaseTransitionRMEvidence
    (P : PhaseTransitionRMPackage) where
  densityBacteriaNonNegative : 0 ≤ P.densityBacteria
  densityPhageNonNegative : 0 ≤ P.densityPhage
  restrictionEfficiencyPositive : 0 < P.restrictionEfficiency
  modificationEfficiencyPositive : 0 < P.modificationEfficiency
  criticalThresholdPositive : 0 < P.criticalThreshold
  phaseDiagramClosed : P.phaseDiagram
  bistabilityRegionClosed : P.bistabilityRegion
  limitCycleExistenceClosed : P.limitCycleExistence

def PhaseTransitionRMClosed
    (P : PhaseTransitionRMPackage) : Prop :=
  0 ≤ P.densityBacteria ∧ 0 ≤ P.densityPhage ∧
  0 < P.restrictionEfficiency ∧ 0 < P.modificationEfficiency ∧
  0 < P.criticalThreshold ∧ P.phaseDiagram ∧
  P.bistabilityRegion ∧ P.limitCycleExistence

theorem phase_transition_rm_closed_from_evidence
    (P : PhaseTransitionRMPackage)
    (E : PhaseTransitionRMEvidence P) :
    PhaseTransitionRMClosed P := by
  exact And.intro E.densityBacteriaNonNegative
    (And.intro E.densityPhageNonNegative
      (And.intro E.restrictionEfficiencyPositive
        (And.intro E.modificationEfficiencyPositive
          (And.intro E.criticalThresholdPositive
            (And.intro E.phaseDiagramClosed
              (And.intro E.bistabilityRegionClosed E.limitCycleExistenceClosed))))))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse