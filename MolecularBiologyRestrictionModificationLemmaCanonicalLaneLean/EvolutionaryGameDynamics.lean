import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EvolutionaryGameDynamicsPackage where
  payoffMatrix : Type
  replicatorEquation : Prop
  equilibriumPoints : Prop
  fitnessLandscape : Prop
  mutationRate : Prop
  selectionPressure : Prop

structure EvolutionaryGameDynamicsEvidence (E : EvolutionaryGameDynamicsPackage) where
  replicatorEquationClosed : E.replicatorEquation
  equilibriumPointsClosed : E.equilibriumPoints
  fitnessLandscapeClosed : E.fitnessLandscape
  mutationRateClosed : E.mutationRate
  selectionPressureClosed : E.selectionPressure

def EvolutionaryGameDynamicsClosed (E : EvolutionaryGameDynamicsPackage) : Prop :=
  E.replicatorEquation ∧ E.equilibriumPoints ∧ E.fitnessLandscape ∧ E.mutationRate ∧ E.selectionPressure

theorem evolutionary_game_dynamics_closed_from_evidence (E : EvolutionaryGameDynamicsPackage) (Ev : EvolutionaryGameDynamicsEvidence E) : EvolutionaryGameDynamicsClosed E := by
  exact And.intro Ev.replicatorEquationClosed (And.intro Ev.equilibriumPointsClosed (And.intro Ev.fitnessLandscapeClosed (And.intro Ev.mutationRateClosed Ev.selectionPressureClosed)))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse