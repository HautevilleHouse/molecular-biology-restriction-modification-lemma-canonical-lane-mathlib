import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EvolutionaryGameSystem where
  playerType : Type u
  strategyType : Type v
  payoffMatrix : strategyType → strategyType → ℝ
  nashEquilibrium : Prop
  evolutionarilyStableStrategy : Prop
  replicatorDynamics : Prop

structure EvolutionaryGameEvidence (E : EvolutionaryGameSystem) where
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionarilyStableStrategyClosed : E.evolutionarilyStableStrategy
  replicatorDynamicsClosed : E.replicatorDynamics

def EvolutionaryGameClosed (E : EvolutionaryGameSystem) : Prop :=
  E.nashEquilibrium ∧ E.evolutionarilyStableStrategy ∧ E.replicatorDynamics

theorem evolutionary_game_closed_from_evidence
    (E : EvolutionaryGameSystem)
    (Ev : EvolutionaryGameEvidence E) : EvolutionaryGameClosed E := by
  exact And.intro Ev.nashEquilibriumClosed
    (And.intro Ev.evolutionarilyStableStrategyClosed Ev.replicatorDynamicsClosed)

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
