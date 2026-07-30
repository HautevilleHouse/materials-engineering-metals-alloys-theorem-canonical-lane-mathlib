import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure StrengtheningPackage where
  solidSolutionStrengthening : Prop
  precipitationStrengthening : Prop
  grainBoundaryStrengthening : Prop
  workHardening : Prop
  dispersionStrengthening : Prop

structure StrengtheningEvidence (S : StrengtheningPackage) where
  solidSolutionStrengtheningClosed : S.solidSolutionStrengthening
  precipitationStrengtheningClosed : S.precipitationStrengthening
  grainBoundaryStrengtheningClosed : S.grainBoundaryStrengthening
  workHardeningClosed : S.workHardening
  dispersionStrengtheningClosed : S.dispersionStrengthening

def StrengtheningClosed (S : StrengtheningPackage) : Prop :=
  S.solidSolutionStrengthening ∧ S.precipitationStrengthening ∧ S.grainBoundaryStrengthening ∧ S.workHardening ∧ S.dispersionStrengthening

theorem strengthening_closed_from_evidence (S : StrengtheningPackage) (E : StrengtheningEvidence S) :
    StrengtheningClosed S := by
  exact And.intro E.solidSolutionStrengtheningClosed (And.intro E.precipitationStrengtheningClosed (And.intro E.grainBoundaryStrengtheningClosed (And.intro E.workHardeningClosed E.dispersionStrengtheningClosed)))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
