import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Float
  shearModulus : Float
  poissonRatio : Float
  hookeLaw : Prop
  stressStrainRelation : Prop
  isotropicElastic : Prop
  hookeLawTerm : hookeLaw
  stressStrainRelationTerm : stressStrainRelation
  isotropicElasticTerm : isotropicElastic

structure ElasticityEvidence (E : ElasticityPackage) where
  hookeLawClosed : E.hookeLaw
  stressStrainRelationClosed : E.stressStrainRelation
  isotropicElasticClosed : E.isotropicElastic

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookeLaw ∧ E.stressStrainRelation ∧ E.isotropicElastic

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookeLawClosed (And.intro Ev.stressStrainRelationClosed Ev.isotropicElasticClosed)

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse