# demo-ts

https://github.com/cicadasinging/demo-ts

## Steps

### 云端操作（Github）：

1. 创建远程仓库 `demo-ts`

### 本地操作（WebStorm）：

1. 打开【Get from Version Control】弹窗：
    - 选择【GitHub】
    - 登录【Log ln to GitHub】
    - 选择远程仓库 `demo-ts`
    - 点击【Clone】

2. 新建【HTML file】、【TypeScript file】等：
    - `index.html`、`script.ts`、`style.css`

3. 打开【Terminal】边窗：

```bash
# 全局安装 TypeScript
npm i -g typescript
npm list -g
# TypeScript 操作命令
tsc --init
tsc -w
```

## Core Dev Steps

### `script.ts`：

1. 定义数据类型：接口实现

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

2. 定义逻辑类型：逻辑增删

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

3. 定义请求方法：逻辑增删

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

4. 定义按钮事件：监听点击

```typescript
const button: HTMLButtonElement | null = document.querySelector("button");
button?.addEventListener<"click">("click", getData);
```

5. 定义表体事件：监听点击

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
