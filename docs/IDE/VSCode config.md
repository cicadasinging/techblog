# VSCode config.md

## Extensions

`@category:"themes"`:

- **Disable** all theme but `Monokai`, and install `Monokai Pro`
- `vscode-icons`

`@category:"Formatters"`:

- `Prettier - Code formatter`

`@category:"Programming Languages"`:

- `Auto Complete Tag`
- `TSLint Vue`
- `stylus`

`@category:"Linters"`:

- `Tailwind CSS IntelliSense`
- `PostCSS Language Support`

`@category:"Snippets"`:

- `Vue VSCode Snippets`
- `Vue Language Features (Volar)`
- `TypeScript Vue Plugin (Volar)`

`@category:"other"`:

- `Live Server`
- `Indent-Rainbow`
- `Rainbow Brackets`

## Config

### Format file

1. **Settings**:

```json
"editor.formatOnSave": true
"prettier.printWidth": 120
```

2. **Command Pallet**:

`Format Document With...` > `Configure Default Formatter...` > `Prettier - Code formatter`

### Hidden file

1. **Settings**:

```json
"files.exclude": {
"**/.idea": true,
"**/node_modules": true,
"**/package-lock.json": true
}
```
