import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EpidemiologyModel where
  hostPopulation : Type u
  pathogenType : Type v
  infectionRate : ℝ
  recoveryRate : ℝ
  immunityRate : ℝ
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop
  basicReproductionNumber : ℝ

structure EpidemiologyEvidence (M : EpidemiologyModel) where
  diseaseFreeEquilibriumClosed : M.diseaseFreeEquilibrium
  endemicEquilibriumClosed : M.endemicEquilibrium
  basicReproductionNumberPositive : M.basicReproductionNumber > 0

def EpidemiologyClosed (M : EpidemiologyModel) : Prop :=
  M.diseaseFreeEquilibrium ∧ M.endemicEquilibrium ∧ (M.basicReproductionNumber > 0)

theorem epidemiology_closed_from_evidence
    (M : EpidemiologyModel)
    (E : EpidemiologyEvidence M) : EpidemiologyClosed M := by
  exact And.intro E.diseaseFreeEquilibriumClosed
    (And.intro E.endemicEquilibriumClosed E.basicReproductionNumberPositive)

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
