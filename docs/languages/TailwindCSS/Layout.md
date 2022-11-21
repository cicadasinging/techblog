[TOC]

# Layout

## Flex

### 基本概念

#### ==容器==（flex container）

##### `display: flex;`（定义区块）

##### `display: inline-flex;`（定义行内）

#### ==项目==（flex item）

“容器”的所有子元素会自动成为它的“项目”。

### 内置属性

#### 容器的属性

##### `flex-row` < `flex-direction`（~~主轴方向~~）

##### `flex-nowrap` < `flex-wrap`（~~轴线换行~~）

##### `justify-start` < `justify-content`（==主轴对齐==）

##### `items-stretch` < `align-items`（==纵轴对齐==）

##### `content-start` < `align-content`（多轴对齐）

#### 项目的属性

##### `order-none` < `order`（排序编号）

##### `grow-0` < `flex-grow`（~~放大比例~~）

##### `shrink-0` < `flex-shrink`（~~缩小比例~~）

##### `basis-auto` < `flex-basis`（~~基本空间~~）

##### `flex-auto` < `flex`（*合并简写*）

`none = 0 0 auto, auto = 1 1 auto`

##### `self-auto` < `align-self`（==定制位置==）

## Grid

#### ==容器==（grid container）

##### `display: grid;`（定义区块）

##### `display: inline-grid;`（定义行内）

#### ==项目==（grid item）

“容器”的所有*顶层*子元素会自动成为它的“项目”，不包含项目的子元素。

### 内置属性

#### 容器的属性

##### `grid-rows-none` < `grid-template-rows`, `grid-cols-none` < `grid-template-columns`（~~行高列宽~~）

##### `auto-rows-auto` < `grid-auto-rows`, `auto-cols-auto` < `grid-auto-columns`（~~自动行列~~）

##### `grid-flow-row` < `grid-auto-flow`（~~自动排序~~）

##### `gap-0` < `gap`（沟槽间隔）

##### `justify-start` < `justify-content`, `content-start` < `align-content`, `place-content-start` < `place-content`（==器内对齐==：水平、垂直、*合并*）

##### `justify-items-stretch` < `justify-items`, `items-stretch` < `align-items`, `place-items-stretch` < `place-items`（==格内对齐==：水平、垂直、*合并*）

#### 项目的属性

##### `row-auto` < `grid-row-start`, `row-end-auto` < `grid-row-end`, `col-auto` < `grid-column-start`, `col-end-auto` < `grid-column-end`（~~边线对齐~~）

##### `justify-self-stretch` < `justify-self`, `self-stretch` < `align-self`, `place-self-stretch` < `place-self`（==定制格内对齐==：水平、垂直、*合并*）
