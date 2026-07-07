import NovikovConjectureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NovikovConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : EndgameState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end NovikovConjectureCanonicalLaneLean
end HautevilleHouse
