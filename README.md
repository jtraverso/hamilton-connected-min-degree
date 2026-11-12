# Hamilton-connectedness for large minimum degree (Lean 4)

`HamConn.hamiltonConnected_of_minDegree` (`HamConnChallenge.lean`, Mathlib definitions only): a
graph on `n ≥ 5` vertices with `n + 2 ≤ 2δ` has, for any two distinct vertices `u`, `v`, a
Hamiltonian path from `u` to `v`.

Proof (`HamConn/Basic.lean`): a Hamiltonian cycle of `G − u − v` by Dirac's theorem from
[menger-hamiltonian](https://github.com/jtraverso/menger-hamiltonian) (PALOMAR-2026-10-15-000020,
pinned at `35c5f68`, required as a lake dependency; no code is copied), then a pigeonhole choice of
an index `i` with `u ~ cᵢ`, `v ~ c_{i+1}`.

Build: Lean `v4.35.0-rc3`, Mathlib `v4.35.0-rc3`, `lake build`. Axioms: `propext`,
`Classical.choice`, `Quot.sound`.

Apache 2.0. Author: Juan Pablo Traverso Gianini.
