# OptionTest

Playground to try to understand how options in Lean/Lake work.

## Results:

```
lean -DElab.async=false OptionTest/File1.lean
```

builds the file with the option set.

```
lean -DElab.async=false OptionTest/File2.lean
```

doesn't work as `lean` doesn't know about the imports without `lake` setting the search paths correctly.

```
lake update -R -KElab.async=false
```

sets the option for lakefile evaluation, but does not set it for building files.
