import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EpidemiologicalRMPackage where
  susceptibleHost : Type u
  infectedHost : Type v
  transmissionRate : susceptibleHost → infectedHost → ℝ
  recoveryRate : infectedHost → ℝ
  basicReproNumber : ℝ
  herdImmunityThreshold : ℝ

structure EpidemiologicalRMEvidence
    (E : EpidemiologicalRMPackage) where
  transmissionRatePositive : ∀ (s : E.susceptibleHost) (i : E.infectedHost), E.transmissionRate s i > 0
  recoveryRatePositive : ∀ (i : E.infectedHost), E.recoveryRate i > 0
  basicReproNumberPositive : 0 < E.basicReproNumber
  herdImmunityThresholdPositive : 0 < E.herdImmunityThreshold ∧ E.herdImmunityThreshold ≤ 1

def EpidemiologicalRMClosed
    (E : EpidemiologicalRMPackage) : Prop :=
  (∀ (s : E.susceptibleHost) (i : E.infectedHost), E.transmissionRate s i > 0) ∧
  (∀ (i : E.infectedHost), E.recoveryRate i > 0) ∧
  0 < E.basicReproNumber ∧
  (0 < E.herdImmunityThreshold ∧ E.herdImmunityThreshold ≤ 1)

theorem epidemiological_rm_closed_from_evidence
    (E : EpidemiologicalRMPackage)
    (Ev : EpidemiologicalRMEvidence E) :
    EpidemiologicalRMClosed E := by
  exact And.intro Ev.transmissionRatePositive
    (And.intro Ev.recoveryRatePositive
      (And.intro Ev.basicReproNumberPositive Ev.herdImmunityThresholdPositive))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse