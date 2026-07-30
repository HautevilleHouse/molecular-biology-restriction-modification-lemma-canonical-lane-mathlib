import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationPackage where
  hostBacterium : Type u
  restrictionEnzyme : Type v
  modificationMethyltransferase : Type w
  recognitionSequence : String
  cleavageLocation : Nat
  methylationLocation : Nat
  hostProtection : Prop
  nonSelfDnaCleaved : Prop
  hostProtectionTerm : hostProtection
  nonSelfDnaCleavedTerm : nonSelfDnaCleaved

structure RestrictionModificationEvidence (R : RestrictionModificationPackage) where
  hostProtectionClosed : R.hostProtection
  nonSelfDnaCleavedClosed : R.nonSelfDnaCleaved

def RestrictionModificationClosed (R : RestrictionModificationPackage) : Prop :=
  R.hostProtection ∧ R.nonSelfDnaCleaved

theorem restriction_modification_closed_from_evidence
    (R : RestrictionModificationPackage) (E : RestrictionModificationEvidence R) :
    RestrictionModificationClosed R := by
  exact And.intro E.hostProtectionClosed E.nonSelfDnaCleavedClosed

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse