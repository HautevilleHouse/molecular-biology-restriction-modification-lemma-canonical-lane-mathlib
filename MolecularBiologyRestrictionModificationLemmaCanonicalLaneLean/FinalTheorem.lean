import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean.BridgeLemmas
import MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

def ConstrainedMolecularBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_molecular_biology_endgame (A : AdmissibleClass) :
    ConstrainedMolecularBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse