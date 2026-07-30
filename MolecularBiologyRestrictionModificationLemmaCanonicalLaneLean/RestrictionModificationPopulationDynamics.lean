import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationPopulationDynamics where
  bacterialPopulationDensity : Type u
  plasmidCopyNumber : Type v
  growthRateWithCost : Prop
  restrictionCleavageEfficiency : Prop
  modificationProtectionRate : Prop
  horizontalGeneTransferRate : Prop
  populationEquilibriumExistence : Prop
  stabilityCondition : Prop

def RestrictionModificationPopulationDynamicsClosed (R : RestrictionModificationPopulationDynamics) : Prop :=
  R.growthRateWithCost ∧ R.restrictionCleavageEfficiency ∧ R.modificationProtectionRate ∧
  R.horizontalGeneTransferRate ∧ R.populationEquilibriumExistence ∧ R.stabilityCondition

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse