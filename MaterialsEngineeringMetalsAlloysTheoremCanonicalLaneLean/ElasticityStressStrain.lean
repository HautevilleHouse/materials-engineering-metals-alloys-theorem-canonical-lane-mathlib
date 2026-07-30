import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure ElasticityPackage where
  hookesLaw : Prop
  youngsModulus : Prop
  poissonRatio : Prop
  yieldStrength : Prop
  strainHardening : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio
  yieldStrengthClosed : E.yieldStrength
  strainHardeningClosed : E.strainHardening

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.youngsModulus ∧ E.poissonRatio ∧ E.yieldStrength ∧ E.strainHardening

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.youngsModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.yieldStrengthClosed Ev.strainHardeningClosed)))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
