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

## Settings

1. `settings.json`:

```json
{
  "workbench.startupEditor": "none",
  "workbench.colorTheme": "Monokai Pro (Filter Machine)",
  "workbench.iconTheme": "vscode-icons",
  "editor.formatOnSave": true,
  "prettier.printWidth": 120,
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[vue]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "files.exclude": {
    "**/.idea": true,
    "**/node_modules": true,
    "**/package-lock.json": true
  },
  "editor.codeActionsOnSave": {
    "source.organizeImports": true
  }
}
```
