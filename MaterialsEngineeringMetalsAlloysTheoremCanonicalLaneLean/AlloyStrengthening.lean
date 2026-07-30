import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure AlloyStrengtheningPackage where
  grainBoundaryStrengthening : Prop
  solidSolutionStrengthening : Prop
  precipitationStrengthening : Prop
  workHardening : Prop
  dispersionStrengthening : Prop

def AlloyStrengtheningClosed (A : AlloyStrengtheningPackage) : Prop :=
  A.grainBoundaryStrengthening ∧ A.solidSolutionStrengthening ∧
  A.precipitationStrengthening ∧ A.workHardening ∧ A.dispersionStrengthening

structure AlloyStrengtheningEvidence (A : AlloyStrengtheningPackage) where
  grainBoundaryStrengtheningClosed : A.grainBoundaryStrengthening
  solidSolutionStrengtheningClosed : A.solidSolutionStrengthening
  precipitationStrengtheningClosed : A.precipitationStrengthening
  workHardeningClosed : A.workHardening
  dispersionStrengtheningClosed : A.dispersionStrengthening

theorem alloy_strengthening_closed_from_evidence (A : AlloyStrengtheningPackage) (E : AlloyStrengtheningEvidence A) : AlloyStrengtheningClosed A := by
  exact And.intro E.grainBoundaryStrengtheningClosed
    (And.intro E.solidSolutionStrengtheningClosed
      (And.intro E.precipitationStrengtheningClosed
        (And.intro E.workHardeningClosed E.dispersionStrengtheningClosed)))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse