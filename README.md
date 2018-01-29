# oneMovie

## 整体代码架构

1. 整体是类mvc架构。
    1. 没有view层（前后端分离）。
    2. controller层的index主要是路由,具体的controller只负责将req传递给正确的server。
    3. model是sequelie的model。代表着每一个表。
    4. domain是这个领域自己的一些操作。比如crud等。这里的操作都最好是纯函数,但和这个domain强绑定的检查等副操作也应该写在这一层。
    5. server对应具体的服务。所有的业务代码都在这里。比如说登录服务，user服务。类似权限验证的也应该做成一个服务。服务层也应该保持干净和复用。在controller层可以决定怎么使用服务。
    
    
