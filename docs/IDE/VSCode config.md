# VSCode config.md

## Extensions

`@category:"themes"`:

- **Disable** all theme but `Monokai`
- `vscode-icons`

`@category:"Formatters"`:

- `Prettier - Code formatter`

`@category:"Programming Languages"`:

- `Auto Complete Tag`
- `ESLint`
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
- `Git Graph`
- `NPM Scripts`
- `Vue sort attributes`

## Settings

1. `settings.json`:

```json
{
  "workbench.startupEditor": "none",
  "workbench.colorTheme": "Monokai Classic",
  "workbench.iconTheme": "vscode-icons",
  "vsicons.dontShowNewVersionMessage": true,
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.organizeImports": true
  },
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
  "git.confirmSync": false,
  "git.autofetch": true,
  "npm.packageManager": "npm"
}
```
