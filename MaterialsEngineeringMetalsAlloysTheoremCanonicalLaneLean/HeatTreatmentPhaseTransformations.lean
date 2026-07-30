import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure HeatTreatmentPackage where
  austeniteFormation : Prop
  pearliteTransformation : Prop
  bainiteFormation : Prop
  martensiteFormation : Prop
  temperingEffects : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  austeniteFormationClosed : H.austeniteFormation
  pearliteTransformationClosed : H.pearliteTransformation
  bainiteFormationClosed : H.bainiteFormation
  martensiteFormationClosed : H.martensiteFormation
  temperingEffectsClosed : H.temperingEffects

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.austeniteFormation ∧ H.pearliteTransformation ∧ H.bainiteFormation ∧ H.martensiteFormation ∧ H.temperingEffects

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) :
    HeatTreatmentClosed H := by
  exact And.intro E.austeniteFormationClosed (And.intro E.pearliteTransformationClosed (And.intro E.bainiteFormationClosed (And.intro E.martensiteFormationClosed E.temperingEffectsClosed)))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
