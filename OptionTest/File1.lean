import Lean

open Lean

def getValue (s : String) : CoreM Unit := do
  dbg_trace s!"Value of `Elab.async` in {s}: {Elab.async.get (← getOptions)}"

#eval getValue "file 1"
