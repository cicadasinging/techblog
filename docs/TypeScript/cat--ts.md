# cat--ts

## 基础环境搭建

`Bash`:

```bash
mkdir cat--ts
cd cat--ts
echo "# cat--ts" >> README.md
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/cicadasinging/cat--ts
git push -u origin main
# 全局安装 TypeScript
npm i -g typescript
tsc --init
tsc -w
```

`index.html`:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link href="style.css" rel="stylesheet">
  <title>Title</title>
</head>
<body>
<button class="remind">随机1只喵</button>
<table>
  <thead>
    <tr>
      <th>图片id</th>
      <th>图片预览</th>
      <th>图片高度</th>
      <th>图片宽度</th>
      <th>图片地址</th>
      <th>删除图片</th>
    </tr>
  </thead>
  <tbody id="table-body">
    <tr>
      <td>idxxx</td>
      <td><img alt="cat" src="./example.png"></td>
      <td>xx</td>
      <td>xx</td>
      <td>xx</td>
      <td><a href="#">X</a></td>
    </tr>
  </tbody>
</table>
<script src="./script.js"></script>
</body>
</html>
```

`style.css`:

```css
body {
  width: 900px;
  height: 800px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

button {
  font-size: 1.5rem;
  color: rgb(7, 75, 99);
  width: 200px;
  margin: 10px;
}

table {
  text-align: center;
}

th,
td {
  border: 1px solid rgb(118, 156, 148);
  padding: 5px;
}

a {
  text-decoration: none;
  color: red;
  font-weight: bolder;
}

img {
  height: 30px;
  width: 30px;
}

@keyframes changing {
  from {
    border-style: solid;
  }
  to {
    border-style: dotted;
    border-color: red;
  }
}

.remind {
  border-style: solid;
  animation-name: changing;
  animation-duration: 1s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
}

.green {
  background-color: rgb(106, 181, 118);
}
```

## 重点编程步骤

`script.ts`:

1. 定义数据类型（接口实现）

```typescript
interface CatType {
   id: string;
   url: string;
   height: number;
   width: number;
   test?: boolean;
}

class Cat implements CatType {
   id: string;
   url: string;
   height: number;
   width: number;

   constructor(id: string, url: string, height: number, width: number) {
      this.id = id;
      this.url = url;
      this.height = height;
      this.width = width;
   }
}
```

2. 定义逻辑类型（逻辑增删）

```typescript
const tableBody: HTMLTableElement | null = document.querySelector("#table-body");

class WebDisplay {
   public static addData(data: CatType): void {
      const cat: Cat = new Cat(data.id, data.url, data.height, data.width);
      const tableRow: HTMLTableRowElement = document.createElement("tr");
      tableRow.innerHTML = `
            <td>${cat.id}</td>
            <td><img alt="cat" src="${cat.url}"></td>
            <td>${cat.height.toString()}</td>
            <td>${cat.width.toString()}</td>
            <td>${cat.url}</td>
            <td><a href="#">X</a></td>
        `;
      tableBody?.appendChild(tableRow);
   }
}
```

3. 定义请求方法（远程取数）

```typescript
async function getJSON<T>(url: string): Promise<T> {
   const response: Response = await fetch(url);
   return await response.json();
}

const url: string = "https://api.thecatapi.com/v1/images/search";

async function getData(): Promise<void> {
   try {
      const json: CatType[] = await getJSON<CatType[]>(url);
      const data: CatType = json[0];
      WebDisplay.addData(data);
   } catch (error: Error | unknown) {
      let message: string;
      if (error instanceof Error) {
         message = error.message;
      } else {
         message = String(error);
      }
      console.log(message);
   }
}
```

4. 定义按钮事件（监听新增）

```typescript
const button: HTMLButtonElement | null = document.querySelector("button");
button?.addEventListener<"click">("click", getData);
```

5. 定义表体事件（监听删除）

```typescript
class WebDisplay {
   public static deleteData(deleteButton: HTMLAnchorElement): void {
      const td = deleteButton.parentElement as HTMLTableCellElement;
      const tr = td.parentElement as HTMLTableRowElement;
      tr.remove();
   }
}

tableBody?.addEventListener<"click">("click", (ev: MouseEvent) => {
   WebDisplay.deleteData(<HTMLAnchorElement>ev.target);
});
```
