import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type
  fractureToughness : Prop
  crackPropagation : Prop
  parisLaw : Prop
  griffithCriterion : Prop
  fatigueLimit : Prop
  ductileFracture : Prop
  brittleFracture : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  parisLawClosed : F.parisLaw
  griffithCriterionClosed : F.griffithCriterion
  fatigueLimitClosed : F.fatigueLimit
  ductileFractureClosed : F.ductileFracture
  brittleFractureClosed : F.brittleFracture

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧ F.parisLaw ∧ F.griffithCriterion ∧ F.fatigueLimit ∧ F.ductileFracture ∧ F.brittleFracture

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.crackPropagationClosed (And.intro E.parisLawClosed (And.intro E.griffithCriterionClosed (And.intro E.fatigueLimitClosed (And.intro E.ductileFractureClosed E.brittleFractureClosed)))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse