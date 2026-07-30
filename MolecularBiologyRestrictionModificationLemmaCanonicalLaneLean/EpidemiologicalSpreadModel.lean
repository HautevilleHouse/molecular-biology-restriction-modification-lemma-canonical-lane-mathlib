import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EpidemiologicalSpreadModelPackage where
  susceptibleCompartment : Type
  infectedCompartment : Type
  recoveredCompartment : Type
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductionNumber : Prop
  herdImmunityThreshold : Prop

structure EpidemiologicalSpreadModelEvidence (E : EpidemiologicalSpreadModelPackage) where
  transmissionRateClosed : E.transmissionRate
  recoveryRateClosed : E.recoveryRate
  basicReproductionNumberClosed : E.basicReproductionNumber
  herdImmunityThresholdClosed : E.herdImmunityThreshold

def EpidemiologicalSpreadModelClosed (E : EpidemiologicalSpreadModelPackage) : Prop :=
  E.transmissionRate ∧ E.recoveryRate ∧ E.basicReproductionNumber ∧ E.herdImmunityThreshold

theorem epidemiological_spread_model_closed_from_evidence (E : EpidemiologicalSpreadModelPackage) (Ev : EpidemiologicalSpreadModelEvidence E) : EpidemiologicalSpreadModelClosed E := by
  exact And.intro Ev.transmissionRateClosed (And.intro Ev.recoveryRateClosed (And.intro Ev.basicReproductionNumberClosed Ev.herdImmunityThresholdClosed))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse