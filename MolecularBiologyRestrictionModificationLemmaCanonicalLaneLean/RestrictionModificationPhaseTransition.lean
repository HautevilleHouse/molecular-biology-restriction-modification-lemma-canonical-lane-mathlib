import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationPhaseTransitionPackage where
  initialPopulationState : Type
  restrictionEnzymeDensity : Prop
  modificationMethylaseDensity : Prop
  phaseTransitionThreshold : Prop
  plasmidCopyNumber : Prop
  populationDynamics : Prop

structure RestrictionModificationPhaseTransitionEvidence (P : RestrictionModificationPhaseTransitionPackage) where
  restrictionEnzymeDensityClosed : P.restrictionEnzymeDensity
  modificationMethylaseDensityClosed : P.modificationMethylaseDensity
  phaseTransitionThresholdClosed : P.phaseTransitionThreshold
  plasmidCopyNumberClosed : P.plasmidCopyNumber
  populationDynamicsClosed : P.populationDynamics

def RestrictionModificationPhaseTransitionClosed (P : RestrictionModificationPhaseTransitionPackage) : Prop :=
  P.restrictionEnzymeDensity ∧ P.modificationMethylaseDensity ∧ P.phaseTransitionThreshold ∧ P.plasmidCopyNumber ∧ P.populationDynamics

theorem restriction_modification_phase_transition_closed_from_evidence (P : RestrictionModificationPhaseTransitionPackage) (E : RestrictionModificationPhaseTransitionEvidence P) : RestrictionModificationPhaseTransitionClosed P := by
  exact And.intro E.restrictionEnzymeDensityClosed (And.intro E.modificationMethylaseDensityClosed (And.intro E.phaseTransitionThresholdClosed (And.intro E.plasmidCopyNumberClosed E.populationDynamicsClosed)))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse