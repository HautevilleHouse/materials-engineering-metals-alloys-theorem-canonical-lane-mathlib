import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundary : Prop
  gibbsFreeEnergyMinimization : Prop
  solidusLiquidus : Prop
  eutecticTransition : Prop
  solvusLines : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundaryClosed : P.phaseBoundary
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization
  solidusLiquidusClosed : P.solidusLiquidus
  eutecticTransitionClosed : P.eutecticTransition
  solvusLinesClosed : P.solvusLines

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundary ∧ P.gibbsFreeEnergyMinimization ∧ P.solidusLiquidus ∧ P.eutecticTransition ∧ P.solvusLines

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundaryClosed (And.intro E.gibbsFreeEnergyMinimizationClosed (And.intro E.solidusLiquidusClosed (And.intro E.eutecticTransitionClosed E.solvusLinesClosed)))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
