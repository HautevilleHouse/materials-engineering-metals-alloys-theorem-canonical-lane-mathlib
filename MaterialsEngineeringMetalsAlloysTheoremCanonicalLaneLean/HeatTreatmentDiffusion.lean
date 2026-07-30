import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure HeatTreatmentPackage where
  diffusionCoefficient : Prop
  ficksLaw : Prop
  arrheniusRelation : Prop
  timeTemperatureTransformation : Prop
  austeniteDecomposition : Prop
  martensiteStart : Prop
  precipitationKinetics : Prop

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.diffusionCoefficient ∧ H.ficksLaw ∧ H.arrheniusRelation ∧
  H.timeTemperatureTransformation ∧ H.austeniteDecomposition ∧
  H.martensiteStart ∧ H.precipitationKinetics

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  diffusionCoefficientClosed : H.diffusionCoefficient
  ficksLawClosed : H.ficksLaw
  arrheniusRelationClosed : H.arrheniusRelation
  timeTemperatureTransformationClosed : H.timeTemperatureTransformation
  austeniteDecompositionClosed : H.austeniteDecomposition
  martensiteStartClosed : H.martensiteStart
  precipitationKineticsClosed : H.precipitationKinetics

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) : HeatTreatmentClosed H := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.ficksLawClosed
      (And.intro E.arrheniusRelationClosed
        (And.intro E.timeTemperatureTransformationClosed
          (And.intro E.austeniteDecompositionClosed
            (And.intro E.martensiteStartClosed E.precipitationKineticsClosed)))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse