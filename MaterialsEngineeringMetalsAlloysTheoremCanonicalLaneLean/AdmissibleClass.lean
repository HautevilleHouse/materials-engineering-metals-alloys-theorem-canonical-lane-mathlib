import MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
