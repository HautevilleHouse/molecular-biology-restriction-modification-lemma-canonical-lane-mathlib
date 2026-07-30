import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure PopulationDynamicsSystem where
  hostCellType : Type u
  virusType : Type v
  populationSize : Nat → Nat
  growthRate : Prop
  immuneResponse : Prop
  steadyState : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsSystem) where
  growthRateClosed : P.growthRate
  immuneResponseClosed : P.immuneResponse
  steadyStateClosed : P.steadyState

def PopulationDynamicsClosed (P : PopulationDynamicsSystem) : Prop :=
  P.growthRate ∧ P.immuneResponse ∧ P.steadyState

theorem population_dynamics_closed_from_evidence
    (P : PopulationDynamicsSystem)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.growthRateClosed
    (And.intro E.immuneResponseClosed E.steadyStateClosed)

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse
