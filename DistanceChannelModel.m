function RSS= DistanceChannelModel(K,d)
%距离信道模型函数
%参数K：信道增益，为无量纲常数，与天线特征和信道平均衰减特性有关
%参数d：发射天线与接收天线之间的几何距离
%输出RSS：接收信号强度
RSS = K/(d^2);