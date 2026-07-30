import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure BacterialConjugationModel where
  donorCellDensity : Type u
  recipientCellDensity : Type v
  plasmidTransferRate : Prop
  conjugationPilusFormation : Prop
  entryExclusionMechanism : Prop
  transconjugantFormation : Prop
  segregationalStability : Prop
  fitnessCostTransfer : Prop

def BacterialConjugationModelClosed (B : BacterialConjugationModel) : Prop :=
  B.plasmidTransferRate ∧ B.conjugationPilusFormation ∧ B.entryExclusionMechanism ∧
  B.transconjugantFormation ∧ B.segregationalStability ∧ B.fitnessCostTransfer

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse