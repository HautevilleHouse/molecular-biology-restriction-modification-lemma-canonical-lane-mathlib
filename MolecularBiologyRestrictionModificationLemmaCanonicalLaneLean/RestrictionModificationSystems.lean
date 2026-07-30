import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationSystem where
  restrictionEnzyme : Type
  modificationMethylase : Type
  recognitionSequence : String
  cleavageActivity : Prop
  methylationActivity : Prop
  selfProtection : Prop

structure RestrictionModificationSystemEvidence (S : RestrictionModificationSystem) where
  cleavageActivityClosed : S.cleavageActivity
  methylationActivityClosed : S.meTHylationActivity
  selfProtectionClosed : S.selfProtection

def RestrictionModificationSystemClosed (S : RestrictionModificationSystem) : Prop :=
  S.cleavageActivity ∧ S.meTHylationActivity ∧ S.selfProtection

theorem restriction_modification_system_closed_from_evidence (S : RestrictionModificationSystem)
    (E : RestrictionModificationSystemEvidence S) : RestrictionModificationSystemClosed S :=
  And.intro E.cleavageActivityClosed (And.intro E.meTHylationActivityClosed E.selfProtectionClosed)

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse