module

public import Mathlib
public import Diaz.Mirror.five_exponentials

public section

/-!
# Proved solution

The proved counterparts of the declarations stated in `Challenge.lean`. Comparator checks that
each has the same name and type as its counterpart there and depends on no axiom beyond
`propext`, `Quot.sound` and `Classical.choice`. Each is the library theorem named beside it,
whose statement is the same up to unfolding the library's abbreviations.

* `FiveExponentials.five_exponentials`: `Diaz.five_exponentials`
-/

namespace FiveExponentials

theorem five_exponentials :
    ∀ x y : Fin 2 → ℂ, ∀ η : ℂ, LinearIndependent ℚ x → LinearIndependent ℚ y →
      IsAlgebraic ℚ η → η ≠ 0 →
      ¬ ((∀ i j, IsAlgebraic ℚ (Complex.exp (x i * y j))) ∧
          IsAlgebraic ℚ (Complex.exp (η * x 1 / x 0))) :=
  Diaz.five_exponentials

end FiveExponentials
