import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure CorrosionPackage where
  corrosionRate : Float
  passivationLayer : Prop
  pittingPotential : Float
  tafelKinetics : Prop
  oxidationKinetics : Prop
  galvanicCouple : Prop
  tafelKineticsTerm : tafelKinetics
  oxidationKineticsTerm : oxidationKinetics
  galvanicCoupleTerm : galvanicCouple
  passivationLayerTerm : passivationLayer

structure CorrosionEvidence (C : CorrosionPackage) where
  tafelKineticsClosed : C.tafelKinetics
  oxidationKineticsClosed : C.oxidationKinetics
  galvanicCoupleClosed : C.galvanicCouple
  passivationLayerClosed : C.passivationLayer

def CorrosionClosed (C : CorrosionPackage) : Prop :=
  C.tafelKinetics ∧ C.oxidationKinetics ∧ C.galvanicCouple ∧ C.passivationLayer

theorem corrosion_closed_from_evidence (C : CorrosionPackage) (E : CorrosionEvidence C) :
    CorrosionClosed C := by
  exact And.intro E.tafelKineticsClosed
    (And.intro E.oxidationKineticsClosed
      (And.intro E.galvanicCoupleClosed E.passivationLayerClosed))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse