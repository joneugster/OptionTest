import Lake
open Lake DSL

package "OptionTest" where
  version := v!"0.1.0"

@[default_target]
lean_lib OptionTest

@[default_target]
lean_exe "optiontest" where
  root := `Main

open Lean in
#eval (do
  IO.println <| get_config? Elab.async )
