import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure PhaseDiagramsPackage where
  phaseRegions : Type
  solidSolutionRange : Prop
  eutecticPoint : Prop
  eutectoidPoint : Prop
  peritecticPoint : Prop
  congruentMelting : Prop
  phaseRuleApplicable : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  solidSolutionRangeClosed : P.solidSolutionRange
  eutecticPointClosed : P.eutecticPoint
  eutectoidPointClosed : P.eutectoidPoint
  peritecticPointClosed : P.peritecticPoint
  congruentMeltingClosed : P.congruentMelting
  phaseRuleApplicableClosed : P.phaseRuleApplicable

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.solidSolutionRange ∧ P.eutecticPoint ∧ P.eutectoidPoint ∧ P.peritecticPoint ∧ P.congruentMelting ∧ P.phaseRuleApplicable

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage) (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.solidSolutionRangeClosed (And.intro E.eutecticPointClosed (And.intro E.eutectoidPointClosed (And.intro E.peritecticPointClosed (And.intro E.congruentMeltingClosed E.phaseRuleApplicableClosed))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse