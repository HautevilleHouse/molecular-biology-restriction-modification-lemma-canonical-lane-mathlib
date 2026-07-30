import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EvolutionaryGameTheoryRMPackage where
  strategyType : Type u
  payoffMatrix : strategyType → strategyType → ℝ
  replicatorDynamics : Prop
  fixationProbability : Prop
  essCondition : Prop
  mutationRate : ℝ

structure EvolutionaryGameTheoryRMEvidence
    (G : EvolutionaryGameTheoryRMPackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  fixationProbabilityClosed : G.fixationProbability
  essConditionClosed : G.essCondition
  mutationRateNonNegative : 0 ≤ G.mutationRate

def EvolutionaryGameTheoryRMClosed
    (G : EvolutionaryGameTheoryRMPackage) : Prop :=
  G.replicatorDynamics ∧ G.fixationProbability ∧ G.essCondition ∧ 0 ≤ G.mutationRate

theorem evolutionary_game_theory_rm_closed_from_evidence
    (G : EvolutionaryGameTheoryRMPackage)
    (E : EvolutionaryGameTheoryRMEvidence G) :
    EvolutionaryGameTheoryRMClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.fixationProbabilityClosed
      (And.intro E.essConditionClosed E.mutationRateNonNegative))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse