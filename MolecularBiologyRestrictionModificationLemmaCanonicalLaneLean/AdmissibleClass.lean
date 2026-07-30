import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure MolBioAdmissibleObject where
  system : RestrictionModificationSystem
  closed : RestrictionModificationClosed system

def MolBioAdmissibleClass : Type 1 := Σ (A : MolBioAdmissibleObject), A.closed

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
