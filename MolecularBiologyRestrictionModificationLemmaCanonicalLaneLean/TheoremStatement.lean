import MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationAdmittedObject where
  host : Type
  hostTopology : TopologicalSpace host
  restrictionEnzyme : host → Prop
  modificationMethyltransferase : host → Prop
  immuneResponse : Prop
  conclusion : immuneResponse

structure RestrictionModificationWitness (O : RestrictionModificationAdmittedObject) where
  closed : O.immuneResponse

def RestrictionModificationWitnessClosed (O : RestrictionModificationAdmittedObject) : Prop :=
  O.immuneResponse

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
