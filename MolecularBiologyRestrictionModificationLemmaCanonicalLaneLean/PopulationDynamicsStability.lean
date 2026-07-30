import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure PopulationDynamicsStabilityPackage where
  growthRate : Prop
  carryingCapacity : Prop
  competitionCoefficient : Prop
  extinctionThreshold : Prop
  stabilityCondition : Prop
  bifurcationPoint : Prop

structure PopulationDynamicsStabilityEvidence (P : PopulationDynamicsStabilityPackage) where
  growthRateClosed : P.growthRate
  carryingCapacityClosed : P.carryingCapacity
  competitionCoefficientClosed : P.competitionCoefficient
  extinctionThresholdClosed : P.extinctionThreshold
  stabilityConditionClosed : P.stabilityCondition
  bifurcationPointClosed : P.bifurcationPoint

def PopulationDynamicsStabilityClosed (P : PopulationDynamicsStabilityPackage) : Prop :=
  P.growthRate ∧ P.carryingCapacity ∧ P.competitionCoefficient ∧ P.extinctionThreshold ∧ P.stabilityCondition ∧ P.bifurcationPoint

theorem population_dynamics_stability_closed_from_evidence (P : PopulationDynamicsStabilityPackage) (E : PopulationDynamicsStabilityEvidence P) : PopulationDynamicsStabilityClosed P := by
  exact And.intro E.growthRateClosed (And.intro E.carryingCapacityClosed (And.intro E.competitionCoefficientClosed (And.intro E.extinctionThresholdClosed (And.intro E.stabilityConditionClosed E.bifurcationPointClosed))))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse