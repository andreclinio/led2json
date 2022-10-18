# LED2JSON

Um aplicativo de linha de comando 
com um ponto de entrada em `bin/`, código de biblioteca em `lib/`, 
e teste de unidade de exemplo em `test/`.

## Preparação

* Instalar Dart SDK (>=2.18) [https://dart.dev/get-dart]
* Instalar pacote ANTLR (`$ pip install antlr4-tools`) 
* Verificar Java JDK (>=11)


## Desenvolvimento

### Uso de pacotes
```
$ dart pub get
```

### Geração de classes com base na gramática
```
$ antlr4 -Dlanguage=Dart grammar/Led.g4 -o lib/
```

### Exemplo CLI de uso (Arquivos LED em UTF-8)
```
$ dart run bin/led2json.dart samples/tests/edere_menu.led outputs/edere_menu.json
$ dart run bin/led2json.dart samples/sage/DlgAnalogico.led2 outputs/dlg_analogico.json
```