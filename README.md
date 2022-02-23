# Qute-Translate

[userscript](https://github.com/qutebrowser/qutebrowser/blob/master/doc/userscripts.asciidoc) for [qutebrowser](https://github.com/qutebrowser/qutebrowser) for translation of pages or selected text using [Google translate](https://translate.google.com/).

## Installation Linux
Run `install.sh` or simply create a symbolic link or copy the file `translate` to the qutebrowser's userscripts directory (usually `~/.local/share/qutebrowser/userscripts`) and make it executable.

## Installation Windows
Simply create a symbolic link or copy the file `translate.cmd` to the qutebrowser's userscripts directory (usually `%AppData%\qutebrowser\config\userscripts`) and make it executable.

## Usage
### Translate page
To translate the current page simply to

Linux
```
spawn --userscript translate
```
Windows
```
spawn --userscript translate.cmd
```
By default the source language will be automatically detected and the target language will be English.
To specify other languages use the arguments `-s/--source` and `-t/--target`. For example to translate from German to Swedish do

Linux
```
spawn --userscript translate -s de -t sv
```
Windows
```
spawn --userscript translate.cmd -s de -t sv
```
Default languages can also be set using the environment variables `QUTE_TRANS_SOURCE` and `QUTE_TRANS_TARGET` in bash.

### Translate selected text
To translate selected text add the `--text` argument as for example

Linux
```
spawn --userscript translate --text
```
Windows
```
spawn --userscript translate.cmd --text
```
### In hint mode
The userscript can also be used in hint mode by doing

Linux
```
hint links userscript translate
```
Windows
```
hint links userscript translate.cmd
```
## Key-bindings
You can set your own key-bindings for examples as

Linux
```python
config.bind(';t', 'hint userscript link translate')
config.bind(';T', 'hint userscript all translate --text')
config.bind('<Ctrl+T>', 'spawn --userscript translate')
config.bind('<Ctrl+Shift+T>', 'spawn --userscript translate --text')
```
Windows
```python
config.bind(';t', 'hint links userscript translate.cmd')
config.bind(';T', 'hint all userscript translate.cmd --text')
config.bind('<Ctrl+T>', 'spawn --userscript translate.cmd')
config.bind('<Ctrl+Shift+T>', 'spawn --userscript translate.cmd --text')
```
## Contributions
Feel free to contribute or suggest improvements.
Examples of things that could be extended:
* Other translation services other than Google.
* ...
