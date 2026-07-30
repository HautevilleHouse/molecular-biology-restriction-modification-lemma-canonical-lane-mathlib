import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean

structure RestrictionModificationEnzymeKineticsPackage where
  restrictionEnzyme : Type u
  modificationEnzyme : Type v
  substrate : Type w
  kmRestriction : restrictionEnzyme → substrate → ℝ
  kcatRestriction : restrictionEnzyme → ℝ
  kmModification : modificationEnzyme → substrate → ℝ
  kcatModification : modificationEnzyme → ℝ
  competitiveInhibition : Prop
  allostericRegulation : Prop

structure RestrictionModificationEnzymeKineticsEvidence
    (K : RestrictionModificationEnzymeKineticsPackage) where
  kmRestrictionClosed : ∀ (r : K.restrictionEnzyme) (s : K.substrate), K.kmRestriction r s > 0
  kcatRestrictionClosed : ∀ (r : K.restrictionEnzyme), K.kcatRestriction r > 0
  kmModificationClosed : ∀ (m : K.modificationEnzyme) (s : K.substrate), K.kmModification m s > 0
  kcatModificationClosed : ∀ (m : K.modificationEnzyme), K.kcatModification m > 0
  competitiveInhibitionClosed : K.competitiveInhibition
  allostericRegulationClosed : K.allostericRegulation

def RestrictionModificationEnzymeKineticsClosed
    (K : RestrictionModificationEnzymeKineticsPackage) : Prop :=
  (∀ (r : K.restrictionEnzyme) (s : K.substrate), K.kmRestriction r s > 0) ∧
  (∀ (r : K.restrictionEnzyme), K.kcatRestriction r > 0) ∧
  (∀ (m : K.modificationEnzyme) (s : K.substrate), K.kmModification m s > 0) ∧
  (∀ (m : K.modificationEnzyme), K.kcatModification m > 0) ∧
  K.competitiveInhibition ∧
  K.allostericRegulation

theorem restriction_modification_enzyme_kinetics_closed_from_evidence
    (K : RestrictionModificationEnzymeKineticsPackage)
    (E : RestrictionModificationEnzymeKineticsEvidence K) :
    RestrictionModificationEnzymeKineticsClosed K := by
  exact And.intro E.kmRestrictionClosed
    (And.intro E.kcatRestrictionClosed
      (And.intro E.kmModificationClosed
        (And.intro E.kcatModificationClosed
          (And.intro E.competitiveInhibitionClosed E.allostericRegulationClosed))))

end MolecularBiologyRestrictionModificationLemmaCanonicalLaneLean
end HautevilleHouse