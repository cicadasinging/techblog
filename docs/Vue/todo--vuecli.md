# todo--vuecli

## 基础环境搭建

### [Vue CLI](https://cli.vuejs.org/zh/guide/creating-a-project.html)

`package.json`:

```json
{
  "dependencies": {
    "core-js": "^3.8.3",
    "vue": "^3.2.13"
  },
  "devDependencies": {
    "@babel/core": "^7.12.16",
    "@babel/eslint-parser": "^7.12.16",
    "@vue/cli-plugin-babel": "~5.0.0",
    "@vue/cli-plugin-eslint": "~5.0.0",
    "@vue/cli-service": "~5.0.0",
    "eslint": "^7.32.0",
    "eslint-config-prettier": "^8.3.0",
    "eslint-plugin-prettier": "^4.0.0",
    "eslint-plugin-vue": "^8.0.3",
    "lint-staged": "^11.1.2",
    "prettier": "^2.4.1",
    "sass": "^1.32.7",
    "sass-loader": "^12.0.0"
  }
}
```

> 问题：`error  'defineProps' is not defined  no-undef`
>
> 解决：（[参考文档](https://eslint.vuejs.org/user-guide/#compiler-macros-such-as-defineprops-and-defineemits-are-warned-by-no-undef-rule)）
>
> `Terminal`:
>
> ```bash
> npm i -D vue-eslint-parser
> ```
>
> `.eslintrc.js`(Using ESLint <= v7.x):
>
> ```javascript
> module.exports = {
>   parser: "vue-eslint-parser",
>   parserOptions: {
>     parser: "espree",
>     ecmaVersion: 11, // not be 2022
>     sourceType: "module",
>   },
> };
> ```
>

### Git

`Terminal`:

```bash
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:cicadasinging/todo--vue3-vuecli.git
git push -f origin main
```

