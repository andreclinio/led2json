A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.


# Geração de clases com base na gramática
```
$ antlr4 -Dlanguage=Dart grammar/Led.g4 -o lib/
```


```
$ dart bin/led2json.dart samples/edere_menu.led
```