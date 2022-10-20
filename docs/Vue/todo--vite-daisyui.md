# todo--vite-daisyui

## 基础环境搭建

### Vite([vuejs](https://github.com/vuejs)/**[create-vue](https://github.com/vuejs/create-vue)**)

`Bash`:

```bash
npm create vue@3
```

`package.json`:

```json
{
  "dependencies": {
    "vue": "^3.2.38"
  },
  "devDependencies": {
    "@rushstack/eslint-patch": "^1.1.4",
    "@vitejs/plugin-vue": "^3.0.3",
    "@vue/eslint-config-prettier": "^7.0.0",
    "eslint": "^8.22.0",
    "eslint-plugin-vue": "^9.3.0",
    "prettier": "^2.7.1",
    "vite": "^3.0.9"
  }
}
```

### [Tailwind CSS](https://tailwindcss.com/docs/guides/vite#vue)

`Bash`:

```
npm i -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

> 问题：`error  'module' is not defined  no-undef`
>
> 解决：
>
> `.eslintrc.cjs`:
>
> ```javascript
> require("@rushstack/eslint-patch/modern-module-resolution");
> 
> module.exports = {
>     env: {
>        node: true,
>     },
> };
> ```

`tailwind.config.js`:

```javascript
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
};
```

`tailwind.css`:

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

`main.js`:

```javascript
import "./assets/tailwind.css";
```

#### [tailwindlabs](https://github.com/tailwindlabs)/**[prettier-plugin-tailwindcss](https://github.com/tailwindlabs/prettier-plugin-tailwindcss)**

`Bash`:

```bash
npm i -D prettier prettier-plugin-tailwindcss
```

`.prettierrc.json`:

```json
{
  "printWidth": 120,
  "plugins": [
    "prettier-plugin-tailwindcss"
  ]
}
```

#### [tailwindlabs](https://github.com/tailwindlabs)/**[heroicons](https://github.com/tailwindlabs/heroicons)**

`Bash`:

```bash
npm i @heroicons/vue
```

### daisyUI

`Bash`:

```bash
npm i daisyui
```

`tailwind.config.js`:

```javascript
module.exports = {
  plugins: [require("daisyui")],
};
```

### Git

`Bash`:

```bash
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:cicadasinging/todo--vite-daisyui.git
git push -f origin main
```
