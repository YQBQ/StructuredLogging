# StructuredLogging

Structured logging system for FE apps.

## Remained

### UI抽象为`Tree`

1. UI总是结构化的组织在一起的，可以抽象为`Tree`。
2. 交互产生的界面跳转，可以解释为`Tree`上的某个父节点到某个子节点。
3. 最后总会到一个无法再跳转的界面，也就是到了`Tree`的子叶节点。

### iOS中的跳转情况

1. Tabbar作为容器，各个子VC的切换
2. Nav作为容器，子VC的push/pop
3. Modal的跳转方式。
4. 自定义容器VC，各个子VC的切换

每一次跳转都会有一种或多种case，不同的case对应跳转到不同的界面。

不管是Tabbar、Nav、Modal、自定义容器VC等，他们支持不同形式的VC跳转，其都可以抽象为`Tree`上的某个父节点到某个子节点。

### Structured logging

对于Structured logging来说，需要预先定义出这些跳转case，而不是动态的产生跳转case。这样就可以预先生成一个可视化的`Tree`结构。

那么，这个可视化的`Tree`要有多大呢？

`Tree`越大，其所描述的逻辑就越繁杂，不能突显出app的主要脉络。

所以，需要将大`Tree`拆分成各个不同的小`Tree`.

一般来说，app会有很多跳转，但很多情况是不同模块跳转的组合(也就是模块化), 实际上并不会有很多跳转逻辑。

所以, 将大`Tree`拆分为小`Tree`是理所应当。可以理解为“思维脑图”里的逻辑划分、展开/折叠等。





一个界面状态的变化？
