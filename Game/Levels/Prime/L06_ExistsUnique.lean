import Game.Metadata
import Game.Options.MathlibPart

import Game.ToBePorted

World "Prime"
Level 4

Title "Existiert eindeutig"

Introduction
"
Hier lässt sich noch eine neue Notation einführen: `∃!` bedeutet
\"es existiert ein eindeutiges\" und ist definiert als


"

/-- Zeige dass die einzige gerade Primzahl $2$ ist. -/
Statement : ∃! p, Nat.Prime p ∧ Even p := by
  use 2
  constructor
  simp
  rintro y ⟨hy, hy'⟩
  rw [←Nat.Prime.even_iff hy]
  assumption
