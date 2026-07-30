import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

def ConstrainedMaterialsEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_materials_engineering_endgame (A : AdmissibleClass) :
    ConstrainedMaterialsEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse