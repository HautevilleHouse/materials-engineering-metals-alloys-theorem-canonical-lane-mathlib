import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseIdentification : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  eutectoidPoint : Prop
  phaseRuleApplied : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseIdentificationClosed : P.phaseIdentification
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  eutectoidPointClosed : P.eutectoidPoint
  phaseRuleAppliedClosed : P.phaseRuleApplied
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseIdentification ∧ P.phaseBoundaries ∧ P.eutecticPoint ∧ P.eutectoidPoint ∧ P.phaseRuleApplied ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseIdentificationClosed (And.intro E.phaseBoundariesClosed (And.intro E.eutecticPointClosed (And.intro E.eutectoidPointClosed (And.intro E.phaseRuleAppliedClosed E.metastablePhasesClosed))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse