import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EvolutionaryGameTheoryModel where
  strategySet : Type u
  payoffMatrix : Type v
  replicatorDynamics : Prop
  fixationProbability : Prop
  polymorphismMaintenance : Prop
  essCondition : Prop
  invaderResistance : Prop
  alleleFrequencyTrajectory : Prop

def EvolutionaryGameTheoryModelClosed (E : EvolutionaryGameTheoryModel) : Prop :=
  E.replicatorDynamics ∧ E.fixationProbability ∧ E.polymorphismMaintenance ∧
  E.essCondition ∧ E.invaderResistance ∧ E.alleleFrequencyTrajectory

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse