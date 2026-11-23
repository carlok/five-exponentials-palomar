module

public import Mathlib

public section

/-!
# The five exponentials theorem

The statements below are the results this repository registers. Each is stated with Mathlib's
own notions and nothing defined here; each `sorry` is deliberate, and `Solution.lean` proves
the same statement from the library under `Diaz/`.

## `FiveExponentials.five_exponentials`

**The five exponentials theorem** (Waldschmidt 1988, Corollary 2.2). If `x₁, x₂` are linearly
independent over `ℚ`, `y₁, y₂` are linearly independent over `ℚ`, and `η ≠ 0` is algebraic,
then one of the five numbers `exp (xᵢ yⱼ)` and `exp (η x₂ / x₁)` is transcendental.

* `x 0, x 1` are `x₁, x₂` and `y 0, y 1` are `y₁, y₂`.
* The conclusion is the negation of "all four `exp (x i * y j)` and `exp (η * x 1 / x 0)` are
  algebraic".
* Source: Waldschmidt 1988, Corollary 2.2; Waldschmidt 2000, §11.3.3.
-/

namespace FiveExponentials

/-- **The five exponentials theorem** (Waldschmidt 1988, Corollary 2.2). If `x₁, x₂` are linearly
independent over `ℚ`, `y₁, y₂` are linearly independent over `ℚ`, and `η ≠ 0` is algebraic,
then one of the five numbers `exp (xᵢ yⱼ)` and `exp (η x₂ / x₁)` is transcendental. -/
theorem five_exponentials :
    ∀ x y : Fin 2 → ℂ, ∀ η : ℂ, LinearIndependent ℚ x → LinearIndependent ℚ y →
      IsAlgebraic ℚ η → η ≠ 0 →
      ¬ ((∀ i j, IsAlgebraic ℚ (Complex.exp (x i * y j))) ∧
          IsAlgebraic ℚ (Complex.exp (η * x 1 / x 0))) := by
  sorry

end FiveExponentials
