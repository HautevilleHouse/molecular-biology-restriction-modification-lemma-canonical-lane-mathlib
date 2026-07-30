import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationSystem where
  bacterialStrain : Type u
  restrictionEnzyme : Type v
  methyltransferase : Type w
  recognitionSite : Type x
  enzymeBinds : Prop
  cutsDNA : Prop
  methylatesDNA : Prop
  protectsHost : Prop

structure RestrictionModificationEvidence (S : RestrictionModificationSystem) where
  enzymeBindsClosed : S.enzymeBinds
  cutsDNAClosed : S.cutsDNA
  methylatesDNAClosed : S.methylatesDNA
  protectsHostClosed : S.protectsHost

def RestrictionModificationClosed (S : RestrictionModificationSystem) : Prop :=
  S.enzymeBinds ∧ S.cutsDNA ∧ S.methylatesDNA ∧ S.protectsHost

theorem restriction_modification_closed_from_evidence
    (S : RestrictionModificationSystem)
    (E : RestrictionModificationEvidence S) : RestrictionModificationClosed S := by
  exact And.intro E.enzymeBindsClosed
    (And.intro E.cutsDNAClosed
      (And.intro E.methylatesDNAClosed E.protectsHostClosed))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
