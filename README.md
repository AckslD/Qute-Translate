# Qute-Translate

[userscript](https://github.com/qutebrowser/qutebrowser/blob/master/doc/userscripts.asciidoc) for [qutebrowser](https://github.com/qutebrowser/qutebrowser) for translation of pages or selected text using [Google translate](https://translate.google.com/).

## Installation
Run `install.sh` or simply copy to the file `translate` to the qutebrowser's userscripts directory and make it executable.

## Usage
### Translate page
To translate the current page simply to
```
spawn --userscript translate
```
By default the source language will be automatically detected and the target language will be English.
To specify other languages use the arguments `-s/--source` and `-t/--target`. For example to translate from German to Swedish do
```
spawn --userscript translate -s de -t sv
```

Default languages can also be set using the environment variables `QUTE_TRANS_SOURCE` and `QUTE_TRANS_TARGET` in bash.

### Translate selected text
To translate selected text add the `--text` argument as for example
```
spawn --userscript translate --text
```

### In hint mode
The userscript can also be used in hint mode by doing
```
hint links userscript translate
```

## Key-bindings
You can set your own key-bindings for examples as
```python
config.bind(';t', 'hint userscript link translate')
config.bind(';T', 'hint userscript all translate --text')
config.bind('<Ctrl+T>', 'spawn --userscript translate')
config.bind('<Ctrl+Shift+T>', 'spawn --userscript translate --text')
```

## Contributions
Feel free to contribute or suggest improvements.
Examples of things that could be extended:
* Other translation services other than Google.
* ...
