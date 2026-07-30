import MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  materialsConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "materials-engineering-metals-alloys",
  theoremName := "MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean",
  theoremObject := "martensite_stress_strain_homology",
  classicalBoundary := "unrestricted classical boundary carried outside Lean",
  materialsConstrainedStatement := "materials-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "materials_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

end MaterialsEngineeringMetalsAlloysTheoremCanonicalLaneLean
end HautevilleHouse
