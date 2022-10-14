# weather--vite-tailwindcss

## 搭建基础环境

### Vite

1. [vuejs](https://github.com/vuejs)/**[create-vue](https://github.com/vuejs/create-vue)**:

```powershell
cd D:\MyData\Projects\GitHub
npm create vue@3
```

> ? Project name: » weather--vite-tailwindcss
> ? Add Vue Router for Single Page Application development? » Yes

```bash
cd weather--vite-tailwindcss
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/cicadasinging/weather--vite-tailwindcss.git
git push -u origin main
```

### Tailwind CSS

1. [Install Tailwind CSS with Vite](https://tailwindcss.com/docs/guides/vite#vue):

```bash
npm i -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```

2. `tailwind.config.js`:

```javascript
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
};
```

3. `src/assets/tailwind.css`:

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

4. `src/main.js`:

```javascript
import "./assets/tailwind.css";
```

5. `App.vue`:

```vue
<template>
  <h1 class="text-3xl font-bold underline">Hello world!</h1>
</template>
```

## 官方推荐工具

### Prettier

1. [tailwindlabs](https://github.com/tailwindlabs)
   /**[prettier-plugin-tailwindcss](https://github.com/tailwindlabs/prettier-plugin-tailwindcss)**:

```bash
npm i -D prettier prettier-plugin-tailwindcss
```

2. `prettier.config.js`:

```javascript
module.exports = {
  plugins: [require("prettier-plugin-tailwindcss")],
};
```

### Icons

1. [tailwindlabs](https://github.com/tailwindlabs)/**[heroicons](https://github.com/tailwindlabs/heroicons)**:

```bash
npm i @heroicons/vue
```

2. `App.vue`:

```vue
<template>
  <BeakerIcon class="h-6 w-6 text-blue-500"/>
</template>

<script setup>
import {BeakerIcon} from "@heroicons/vue/24/solid";
</script>
```

## 引入其他工具

### Tailwind CSS

1. 配置

```javascript
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        "weather-primary": "#00668A",
        "weather-secondary": "#004E71",
      },
    },
    fontFamily: {
      Roboto: ["Roboto, sans-serif"],
    },
    container: {
      padding: "2rem",
      center: true,
    },
    screens: {
      sm: "640px",
      md: "768px",
    },
  },
};
```

### Font Awesome

1. 配置 
