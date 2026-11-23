# The five exponentials theorem

A Lean 4 and Mathlib proof of the five exponentials theorem, prepared for the [Palomar
registry](https://palomar-registry.org/). It is a self-contained extract of the library
[carlok/diaz-modulus-lean](https://github.com/carlok/diaz-modulus-lean), which is the canonical
home of the proofs.

## Results

- `FiveExponentials.five_exponentials`: **The five exponentials theorem** (Waldschmidt 1988,
  Corollary 2.2). If `x₁, x₂` are linearly independent over `ℚ`, `y₁, y₂` are linearly
  independent over `ℚ`, and `η ≠ 0` is algebraic, then one of the five numbers `exp (xᵢ yⱼ)` and
  `exp (η x₂ / x₁)` is transcendental. Source: Waldschmidt 1988, Corollary 2.2; Waldschmidt 2000,
  §11.3.3.

## Layout

- `Challenge.lean`: the statements, with deliberate `sorry`, importing Mathlib only.
- `Solution.lean`: the same statements, proved by the library theorems.
- `Diaz/`: the 136 library modules the proofs need, copied from diaz-modulus-lean at
  `59d5a598c292` and changed only for the Lean module system (`module`, `public import`,
  `@[expose] public section`). Paths and namespaces are the library's.
- `comparator.json`, `formalization.yaml`: the Palomar submission metadata.

## Build

```bash
lake exe cache get && lake build
```

Lean 4.35.0, Mathlib v4.35.0. `scripts/verify-comparator.sh` runs the toolchain's
`lake comparator` the way Palomar does.

## Related

- The six exponentials theorem from the same library is registered separately as
  [PALOMAR-2026-11-22-000020](https://palomar-registry.org/entry?id=PALOMAR-2026-11-22-000020&version=1).
- Submissions go to https://submit.palomar-registry.org/.

## Authorship

Claude agents (Anthropic) wrote the Lean statements and proofs under Carlo Perassi's direction;
see `formalization.yaml` and the library's `docs/method.md`. Licence: Apache-2.0.
