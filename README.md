Database Course Design

* usertable:
  ```
  uid		用户id	    key 自增
  username	用户名/昵称  无法用作登录 经过验证无效
  email		邮箱         唯一 可用作登陆	
  phone		手机号       唯一 可用作登陆
  password 	密码       是否加密/没有必要
  ```

* userinfo
  ```
  uid
  avator		头像
  个人简介		
  注册时间   年月日 
  常居地		  城市
  ```

* celebrity
  ```
  角色ID
  头像
  中文名
  英文名
  性别
  星座
  出生日期
  去世日期
  出生地
  更多中文名	 一个字段  以/作为分隔符
  更多外文名	 一个字段  以/作为分隔符
  家庭成员 	 一个字段  以/作为分隔符
  IMDb编号
  个人简介
  ```

* movieRole
  ```
  mrId     key
  角色Id	 外键
  电影Id	 外键
  职务     
  角色名	  可为空
  ```

* movie
  ```
  mid
  简体中文名
  原名
  别名
  海报
  上映时期
  片长
  IMDb编号
  官网
  简介
  ```

* movieLanguage
  ```
  id
  mid 
  语言id
  ```

* movieArea
  ```
  id
  mid
  地区id
  ```

* movieType
  ```
  id
  mid
  类型id
  ```

* language

  ```
  id
  语言				
  ```

* area

  ```
  id
  地区
  ```

* type

  ```
  id
  类型
  ```

* movieScore
  ```
  电影ID			key
  总评分
  评分人数
  5星人数
  4星人数
  3星人数
  2星人数
  1星人数
  ```

* comment
  ```
  用户ID
  电影ID    	联合主键
  评论状态		想看/看过  选一或不选
  评分
  评论时间
  评论内容
  有用数
  是否可见		|否:说明仅自己可见|
  ```

* award
  ```
  奖项id		  key
  电影奖项中文名
  电影奖项英文名
  颁奖时间
  颁奖国家
  官方网站
  ```

* awardInfo
  ```
  详细奖项id	key
  奖项id		  外
  详细奖项名	
  ```

* celebAwardInfo
  ```
  详细奖项id
  角色id
  状态：提名/获奖
  ```

* movieAwardInfo

  ```
  详细奖项id
  电影id
  状态：提名/获奖
  ```

* 12.20 21:48

  ```
  思考：
  1.是否应该添加职业表（职业id，职业名），再将演职员表staff中的career字段（所担任职务）改为职业id？  
  2.同理，是否应该完善area表（areaId,areaName），然后将其他各表中涉及到地区的字段均改为areaId？  
  思考过程：  
  系统规模较小，新建和完善上述各表成本太大，建表和维护不成比例。  
  结论：  
  不建了。  
  ```

* 12-20-16:00

  ```
  思考：  
  将原staff表进行修改，将原联合主键mid,celebId取消，设置新字段mrId，将其作为该表的主键。   
  主要基于以下的思考:  
  1.针对原表，存在一人分饰多个电影角色，一人在一部电影中担任多个职务，电影和电影角色是一对多的关系，  
  电影和电影分工是多对多的关系，人和电影角色是一对多的关系，人和电影分工是多对多的关系，   
  该关系在数据库层次进行分表的约束过于复杂，维护成本高，操作繁琐。   
  结论：   
  设置新的字段mrId，作为表的主键，原有的字段mid，celebId添加依赖，  
  依赖于movie表和celebrity表，该表的另外两个字段由人工进行维护。
  ```


> 三选一 数据库 DAO    
> 拓展   
> 分工：   
> 负责人，统筹   
> DAO，建立数据库持久层   
> 测试，函数代码。要求测试报告   
> 什么函数、怎么测、测试结果   
> 第一页 	数据库   
> 第二页 	ER  
> 第三页 	DAO   
> 第四页	GITHUB   
> 第五页	感受、收获   

> 上传文件：
> ​	个人实习报告
> ​	源码：组的源码

> **答辩时间：十七周、周五**
> **考试：十八周、周三下午**
