/-
Copyright (c) 2026 Juan Pablo Traverso Gianini. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Juan Pablo Traverso Gianini
-/
module

public import Mathlib.Combinatorics.SimpleGraph.Hamiltonian
public import Mathlib.Combinatorics.SimpleGraph.Finite
public import HamConn.Basic

/-!
# Proof of the statement in `HamConnChallenge.lean` (see `HamConn/Basic.lean`)

A graph on `n ≥ 5` vertices with minimum degree at least `n/2 + 1` is Hamilton-connected: any two
distinct vertices are the ends of a Hamiltonian path (a Dirac-type condition, one above Ore's sharp
bound `σ₂ ≥ n + 1`).
-/

@[expose] public section

namespace HamConn

/-- **Hamilton-connectedness** for `δ(G) ≥ n/2 + 1`. -/
theorem hamiltonConnected_of_minDegree {V : Type*} [Fintype V] [DecidableEq V]
    (G : SimpleGraph V) [DecidableRel G.Adj] (hn : 5 ≤ Fintype.card V)
    (hdeg : Fintype.card V + 2 ≤ 2 * G.minDegree) (u v : V) (huv : u ≠ v) :
    ∃ p : G.Walk u v, p.IsHamiltonian :=
  HamConnLib.exists_hamiltonian_path G hn hdeg huv

end HamConn
