# VSCode config.md

## Extensions

`@category:"themes"`:

1. **Disable** all theme but `Monokai`
2. Install `Monokai Pro`

`@category:"Formatters"`:

- `Prettier - Code formatter`

`@category:"Programming Languages"`:

- `Auto Close Tag`
- `TSLint Vue`
- `stylus`

`@category:"Linters"`:

- `Tailwind CSS IntelliSense`

`@category:"other"`:

- `Live Server`
- `Vue Language Features (Volar)`
- `TypeScript Vue Plugin (Volar)`
- `Vue VSCode Snippets`
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
