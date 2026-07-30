import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure HeatTreatmentPackage where
  annealing : Prop
  quenching : Prop
  tempering : Prop
  normalizing : Prop
  precipitationHardening : Prop
  solutionTreatment : Prop
  ageHardening : Prop
  timeTemperatureTransformation : Prop
  continuousCoolingTransformation : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  annealingClosed : H.annealing
  quenchingClosed : H.quenching
  temperingClosed : H.tempering
  normalizingClosed : H.normalizing
  precipitationHardeningClosed : H.precipitationHardening
  solutionTreatmentClosed : H.solutionTreatment
  ageHardeningClosed : H.ageHardening
  timeTemperatureTransformationClosed : H.timeTemperatureTransformation
  continuousCoolingTransformationClosed : H.continuousCoolingTransformation

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.annealing ∧ H.quenching ∧ H.tempering ∧ H.normalizing ∧ H.precipitationHardening ∧ H.solutionTreatment ∧ H.ageHardening ∧ H.timeTemperatureTransformation ∧ H.continuousCoolingTransformation

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) : HeatTreatmentClosed H := by
  exact And.intro E.annealingClosed (And.intro E.quenchingClosed (And.intro E.temperingClosed (And.intro E.normalizingClosed (And.intro E.precipitationHardeningClosed (And.intro E.solutionTreatmentClosed (And.intro E.ageHardeningClosed (And.intro E.timeTemperatureTransformationClosed E.continuousCoolingTransformationClosed)))))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse