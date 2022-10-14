# weather--vite-tailwindcss

https://github.com/cicadasinging/weather--vite-tailwindcss

## Steps

### 云端操作（Github）：

1. 创建远程仓库 `weather--vite-tailwindcss`

### 本地操作：

#### PowerShell

1. [create-vue](https://github.com/vuejs/create-vue):

```powershell
cd D:\MyData\Projects\GitHub
npm create vue@3
```

> ? Project name: » weather--vite-tailwindcss
> ? Add Vue Router for Single Page Application development? » Yes

#### VSCode

打开【Terminal】边窗：

1. 操作 git 关联远程仓库：

```bash
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/cicadasinging/weather--vite-tailwindcss.git
git push -u origin main
```

2. 安装 Tailwind 以及其它依赖项：

```bash
npm i -D tailwindcss@latest postcss@latest autoprefixer@latest
```

3. 初始配置文件（`postcss.config.js`、`tailwind.config.js`）：

```bash
npx tailwindcss init -p
```

4. 配置 `tailwind.config.js`：

```javascript
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
};
```

5. 创建 `src/assets/tailwind.css`：

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

