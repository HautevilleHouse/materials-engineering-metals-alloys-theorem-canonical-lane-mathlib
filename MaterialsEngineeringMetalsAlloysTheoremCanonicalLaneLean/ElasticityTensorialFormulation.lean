import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure ElasticityPackage where
  strainTensor : Prop
  stressTensor : Prop
  hookesLaw : Prop
  elasticModuli : Prop
  isotropyCondition : Prop
  anisotropyFactors : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  strainTensorClosed : E.strainTensor
  stressTensorClosed : E.stressTensor
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  isotropyConditionClosed : E.isotropyCondition
  anisotropyFactorsClosed : E.anisotropyFactors

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.strainTensor ∧ E.stressTensor ∧ E.hookesLaw ∧ E.elasticModuli ∧ E.isotropyCondition ∧ E.anisotropyFactors

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.strainTensorClosed (And.intro Ev.stressTensorClosed (And.intro Ev.hookesLawClosed (And.intro Ev.elasticModuliClosed (And.intro Ev.isotropyConditionClosed Ev.anisotropyFactorsClosed))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse