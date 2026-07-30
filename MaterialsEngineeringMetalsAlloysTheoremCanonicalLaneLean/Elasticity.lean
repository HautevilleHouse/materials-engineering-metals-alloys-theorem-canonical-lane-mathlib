import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type
  strainTensor : Type
  elasticConstants : Type
  hookesLaw : Prop
  youngsModulus : Prop
  poissonsRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  anisotropicElasticity : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  youngsModulusClosed : E.youngsModulus
  poissonsRatioClosed : E.poissonsRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropicElasticityClosed : E.anisotropicElasticity

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.youngsModulus ∧ E.poissonsRatio ∧ E.shearModulus ∧ E.bulkModulus ∧ E.anisotropicElasticity

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.youngsModulusClosed (And.intro Ev.poissonsRatioClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed Ev.anisotropicElasticityClosed))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse