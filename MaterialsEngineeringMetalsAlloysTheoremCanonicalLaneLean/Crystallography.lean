import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeVectors : Type
  bravaisLattice : Type
  symmetryGroup : Type
  reciprocalLattice : Type
  millerIndices : Type
  primitiveCellVolume : Prop
  wyckoffPositions : Prop
  structureFactor : Prop
  braggCondition : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  primitiveCellVolumeClosed : C.primitiveCellVolume
  wyckoffPositionsClosed : C.wyckoffPositions
  structureFactorClosed : C.structureFactor
  braggConditionClosed : C.braggCondition

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.primitiveCellVolume ∧ C.wyckoffPositions ∧ C.structureFactor ∧ C.braggCondition

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.primitiveCellVolumeClosed (And.intro E.wyckoffPositionsClosed (And.intro E.structureFactorClosed E.braggConditionClosed))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse