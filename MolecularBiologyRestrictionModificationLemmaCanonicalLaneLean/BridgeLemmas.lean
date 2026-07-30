import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean.RestrictionModificationLemma

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedObject.molecularBiologyObj o => o.nonSelfDnaCleaved

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with ⟨o⟩
  exact o.nonSelfDnaCleavedTerm

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse