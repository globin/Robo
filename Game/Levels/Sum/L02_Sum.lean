import Game.Metadata

import Game.ToBePorted

import Game.Options.MathlibPart

set_option tactic.hygienic false
open Finset

World "Sum"
Level 2

Title "endliche Summe"

Introduction
"
Ihr schaut euch den nächsten Turm an."

open BigOperators

/-- $\\sum_{i=0}^{n-1} (i + 1) = n + \\sum_{i=0}^{n-1} i$. -/
Statement (n : ℕ) : ∑ i : Fin n, ((i : ℕ) + 1) = n + (∑ i : Fin n, (i : ℕ)) := by
  Hint "**Du**: Hmm, wieder `simp`?

  **Robo**: Nicht ganz. `simp` benützt nur Lemmas, die klar eine Vereinfachung darstellen.
  Im Lean-Duden sind diese Lemmas mit `@[simp]` markiert.
  Hier brauchen wir aber folgende Identität:

  $$
  \\sum_\{i = 0}^n a_i + b_i = \\sum_\{i = 0}^n a_i + \\sum_\{j = 0}^n b_j
  $$

  **Robo**: Und da bei dieser Identität unklar ist, welche Seite „einfacher“ ist, wird so ein Lemma nicht mit
  `@[simp]` markiert. 

  **Du**: Hat diese Gleichheit denn wenigstens einen Namen.

  **Robo**:  Sie heißt `sum_add_distrib`.
  "
  rw [sum_add_distrib]
  Hint "**Robo**: Die zweite Summe `∑ x : Fin n, 1` kann jetzt aber mit
  `simp` zu `n` vereinfacht werden."
  simp
  Hint "**Robo**: Bis auf Umordnung sind jetzt beide Seiten gleich!

  **Du**: Dann greift jetzt wohl `ring`!

  **Robo**: Genau! Und alternativ könntest du mit `rw [add_comm]` die Arbeit von `ring`
  auch manuell machen."
  ring

NewLemma Finset.sum_add_distrib add_comm
LemmaTab "Sum"

Conclusion "Der Babylonier macht ein sehr zufriedenes Gesicht."
