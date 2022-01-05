# StructuredLogging

Structured logging system for FE apps.

## Remained

UI抽象为`Tree`:
1. UI总是结构化的组织在一起的，可以抽象为`Tree`。
2. 交互产生的界面跳转，可以解释为`Tree`上的某个父节点到某个子节点。
3. 最后总会到一个无法再跳转的界面，也就是到了`Tree`的子叶节点。

iOS中的跳转情况：
1. Tabbar作为容器，各个子VC的切换
2. Nav作为容器，子VC的push/pop
3. Modal的跳转方式。
4. 自定义容器VC，各个子VC的切换
