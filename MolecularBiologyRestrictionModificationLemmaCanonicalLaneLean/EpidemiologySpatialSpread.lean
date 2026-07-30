import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EpidemiologySpatialSpread where
  hostPopulationDensity : Type u
  pathogenLoad : Type v
  exposedSubpopulation : Prop
  infectedSubpopulation : Prop
  recoveredSubpopulation : Prop
  transmissionRate : Prop
  recoveryRate : Prop
  spatialDiffusionCoefficient : Prop
  basicReproductiveNumber : Prop
  endemicEquilibriumStability : Prop

def EpidemiologySpatialSpreadClosed (E : EpidemiologySpatialSpread) : Prop :=
  E.exposedSubpopulation ∧ E.infectedSubpopulation ∧ E.recoveredSubpopulation ∧
  E.transmissionRate ∧ E.recoveryRate ∧ E.spatialDiffusionCoefficient ∧
  E.basicReproductiveNumber ∧ E.endemicEquilibriumStability

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse