import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure PhaseVariableModel where
  phaseVariable : Type
  expressionLevel : Prop
  phaseSwitchRate : Prop
  populationHeterogeneity : Prop
  restrictionModificationEscape : Prop

structure PhaseVariableEvidence (P : PhaseVariableModel) where
  expressionLevelClosed : P.expressionLevel
  phaseSwitchRateClosed : P.phaseSwitchRate
  populationHeterogeneityClosed : P.populationHeterogeneity
  restrictionModificationEscapeClosed : P.restrictionModificationEscape

def PhaseVariableClosed (P : PhaseVariableModel) : Prop :=
  P.expressionLevel ∧ P.phaseSwitchRate ∧ P.populationHeterogeneity ∧ P.restrictionModificationEscape

theorem phase_variable_closed_from_evidence (P : PhaseVariableModel)
    (E : PhaseVariableEvidence P) : PhaseVariableClosed P :=
  And.intro E.expressionLevelClosed (And.intro E.phaseSwitchRateClosed
    (And.intro E.populationHeterogeneityClosed E.restrictionModificationEscapeClosed))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse