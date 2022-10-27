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
    "pinia": "^2.0.21",
    "vue": "^3.2.38",
    "vue-router": "^4.1.5"
  },
  "devDependencies": {
    "@rushstack/eslint-patch": "^1.1.4",
    "@vitejs/plugin-vue": "^3.0.3",
    "@vue/eslint-config-prettier": "^7.0.0",
    "@vue/test-utils": "^2.0.2",
    "eslint": "^8.22.0",
    "eslint-plugin-vue": "^9.3.0",
    "jsdom": "^20.0.0",
    "prettier": "^2.7.1",
    "vite": "^3.0.9",
    "vitest": "^0.23.0"
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
>      env: {
>        node: true,
>      },
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

### [daisyUI](https://daisyui.com/docs/install/)

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

### [Icones](https://icones.js.org/)

`Bash`:

```bash
npm i -D @iconify/json
```

### 按需导入

#### [antfu](https://github.com/antfu)/**[unplugin-auto-import](https://github.com/antfu/unplugin-auto-import)**&**[unplugin-vue-components](https://github.com/antfu/unplugin-vue-components)**&[unplugin-icons](https://github.com/antfu/unplugin-icons)

`Bash`:

```bash
npm i -D unplugin-auto-import unplugin-vue-components unplugin-icons
```

`vite.config.js`:

> see `node_modules\@iconify\json\collections.md`

```javascript
import vue from "@vitejs/plugin-vue";
import { fileURLToPath, URL } from "node:url";
import AutoImport from "unplugin-auto-import/vite";
import IconsResolver from "unplugin-icons/resolver";
import Icons from "unplugin-icons/vite";
import Components from "unplugin-vue-components/vite";
import { defineConfig } from "vite";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    AutoImport({
      imports: ["vue", "vue-router", "pinia"],
      dts: true,
      eslintrc: { enabled: true },
    }),
    Components({
      resolvers: [
        IconsResolver({
          enabledCollections: ["icon-park-outline"],
          alias: { park: "icon-park-outline" },
          prefix: "",
        }),
      ],
      dts: true,
    }),
    Icons({ autoInstall: true }),
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
});
```

### 其他工具

#### [axios](https://github.com/axios)/**[axios](https://github.com/axios/axios)**

`Bash`:

```bash
npm i axios
```

#### [uuidjs](https://github.com/uuidjs)/**[uuid](https://github.com/uuidjs/uuid)**

`Bash`:

```bash
npm i uuid
```

#### [iamkun](https://github.com/iamkun)/**[dayjs](https://github.com/iamkun/dayjs)**

`Bash`:

```bash
npm i dayjs
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
