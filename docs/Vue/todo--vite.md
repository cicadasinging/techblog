# todo--vite

## 基础环境搭建

### Vite([vuejs](https://github.com/vuejs)/**[create-vue](https://github.com/vuejs/create-vue)**)

`Terminal`:

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

### Git

`Terminal`:

```bash
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:cicadasinging/todo--vite.git
git push -f origin main
```

## 其他辅助工具

### Normalize.css([necolas](https://github.com/necolas)/**[normalize.css](https://github.com/necolas/normalize.css)**)

`Terminal`:

```bash
npm i normalize.css
```

`package.json`:

```json
{
  "dependencies": {
    "normalize.css": "^8.0.1"
  }
}
```

### [盒子模型](https://zh.learnlayout.com/box-sizing.html)

```css
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
```
