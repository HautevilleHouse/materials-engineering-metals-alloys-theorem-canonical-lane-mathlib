import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure StrengtheningMechanismsPackage where
  solidSolutionStrengthening : Prop
  grainBoundaryStrengthening : Prop
  precipitationStrengthening : Prop
  workHardening : Prop
  dispersionStrengthening : Prop
  hallPetchEffect : Prop
  orowanStrengthening : Prop
  taylorHardening : Prop

structure StrengtheningMechanismsEvidence (S : StrengtheningMechanismsPackage) where
  solidSolutionStrengtheningClosed : S.solidSolutionStrengthening
  grainBoundaryStrengtheningClosed : S.grainBoundaryStrengthening
  precipitationStrengtheningClosed : S.precipitationStrengthening
  workHardeningClosed : S.workHardening
  dispersionStrengtheningClosed : S.dispersionStrengthening
  hallPetchEffectClosed : S.hallPetchEffect
  orowanStrengtheningClosed : S.orowanStrengthening
  taylorHardeningClosed : S.taylorHardening

def StrengtheningMechanismsClosed (S : StrengtheningMechanismsPackage) : Prop :=
  S.solidSolutionStrengthening ∧ S.grainBoundaryStrengthening ∧ S.precipitationStrengthening ∧ S.workHardening ∧ S.dispersionStrengthening ∧ S.hallPetchEffect ∧ S.orowanStrengthening ∧ S.taylorHardening

theorem strengthening_mechanisms_closed_from_evidence (S : StrengtheningMechanismsPackage) (E : StrengtheningMechanismsEvidence S) : StrengtheningMechanismsClosed S := by
  exact And.intro E.solidSolutionStrengtheningClosed (And.intro E.grainBoundaryStrengtheningClosed (And.intro E.precipitationStrengtheningClosed (And.intro E.workHardeningClosed (And.intro E.dispersionStrengtheningClosed (And.intro E.hallPetchEffectClosed (And.intro E.orowanStrengtheningClosed E.taylorHardeningClosed))))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse