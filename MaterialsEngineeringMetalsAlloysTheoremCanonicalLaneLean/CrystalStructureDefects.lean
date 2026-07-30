import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  unitCellVolume : Type v
  pointDefects : Prop
  lineDefects : Prop
  planarDefects : Prop
  volumeDefects : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  pointDefectsClosed : C.pointDefects
  lineDefectsClosed : C.lineDefects
  planarDefectsClosed : C.planarDefects
  volumeDefectsClosed : C.volumeDefects

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.pointDefects ∧ C.lineDefects ∧ C.planarDefects ∧ C.volumeDefects

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.pointDefectsClosed (And.intro E.lineDefectsClosed (And.intro E.planarDefectsClosed E.volumeDefectsClosed))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
