import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure EnzymeKineticsRestrictionModification where
  restrictionEnzymeConcentration : Type u
  modificationMethyltransferaseConcentration : Type v
  recognitionSiteBindingAffinity : Prop
  cleavageRateConstant : Prop
  methylationRateConstant : Prop
  competetiveInhibition : Prop
  substrateSpecificity : Prop
  allostericRegulation : Prop
  steadyStateTurnover : Prop
  reactionDiffusionCoupling : Prop

def EnzymeKineticsRestrictionModificationClosed (E : EnzymeKineticsRestrictionModification) : Prop :=
  E.recognitionSiteBindingAffinity ∧ E.cleavageRateConstant ∧ E.methylationRateConstant ∧
  E.competetiveInhibition ∧ E.substrateSpecificity ∧ E.allostericRegulation ∧
  E.steadyStateTurnover ∧ E.reactionDiffusionCoupling

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse