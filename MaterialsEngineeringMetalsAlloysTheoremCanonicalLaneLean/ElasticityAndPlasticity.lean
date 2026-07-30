import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensorDefined : Prop
  strainTensorDefined : Prop
  constitutiveRelations : Prop
  youngModulus : Prop
  poissonRatio : Prop
  yieldCriterion : Prop
  plasticFlowRule : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorDefinedClosed : E.stressTensorDefined
  strainTensorDefinedClosed : E.strainTensorDefined
  constitutiveRelationsClosed : E.constitutiveRelations
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  yieldCriterionClosed : E.yieldCriterion
  plasticFlowRuleClosed : E.plasticFlowRule

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensorDefined ∧ E.strainTensorDefined ∧ E.constitutiveRelations ∧
  E.youngModulus ∧ E.poissonRatio ∧ E.yieldCriterion ∧ E.plasticFlowRule

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorDefinedClosed
    (And.intro Ev.strainTensorDefinedClosed
      (And.intro Ev.constitutiveRelationsClosed
        (And.intro Ev.youngModulusClosed
          (And.intro Ev.poissonRatioClosed
            (And.intro Ev.yieldCriterionClosed Ev.plasticFlowRuleClosed)))))

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse