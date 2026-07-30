import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure PopulationDynamicsModel where
  bacterialPopulation : Type
  phagePopulation : Type
  growthRate : Prop
  infectionRate : Prop
  restrictionModificationProtection : Prop
  populationEquilibrium : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsModel) where
  growthRateClosed : P.growthRate
  infectionRateClosed : P.infectionRate
  restrictionModificationProtectionClosed : P.restrictionModificationProtection
  populationEquilibriumClosed : P.populationEquilibrium

def PopulationDynamicsClosed (P : PopulationDynamicsModel) : Prop :=
  P.growthRate ∧ P.infectionRate ∧ P.restrictionModificationProtection ∧ P.populationEquilibrium

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsModel)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P :=
  And.intro E.growthRateClosed (And.intro E.infectionRateClosed
    (And.intro E.restrictionModificationProtectionClosed E.populationEquilibriumClosed))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse