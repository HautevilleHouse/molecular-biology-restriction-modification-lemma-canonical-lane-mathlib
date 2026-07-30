import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure SystemsBiologyModelRMPackage where
  networkNode : Type u
  interactionEdge : Type v
  regulatoryNetwork : networkNode → networkNode → Prop
  fluxBalance : Prop
  stoichiometricMatrix : List (List ℝ)
  steadyStateCondition : Prop
  robustnessAnalysis : Prop

structure SystemsBiologyModelRMEvidence
    (S : SystemsBiologyModelRMPackage) where
  regulatoryNetworkClosed : ∀ (n1 n2 : S.networkNode), S.regulatoryNetwork n1 n2 → True
  fluxBalanceClosed : S.fluxBalance
  steadyStateConditionClosed : S.steadyStateCondition
  robustnessAnalysisClosed : S.robustnessAnalysis

def SystemsBiologyModelRMClosed
    (S : SystemsBiologyModelRMPackage) : Prop :=
  (∀ (n1 n2 : S.networkNode), S.regulatoryNetwork n1 n2 → True) ∧
  S.fluxBalance ∧ S.steadyStateCondition ∧ S.robustnessAnalysis

theorem systems_biology_model_rm_closed_from_evidence
    (S : SystemsBiologyModelRMPackage)
    (E : SystemsBiologyModelRMEvidence S) :
    SystemsBiologyModelRMClosed S := by
  exact And.intro E.regulatoryNetworkClosed
    (And.intro E.fluxBalanceClosed
      (And.intro E.steadyStateConditionClosed E.robustnessAnalysisClosed))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse