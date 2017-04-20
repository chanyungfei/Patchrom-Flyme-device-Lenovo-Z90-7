.class Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiTrafficPoller$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_2

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z

    .line 135
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string v2, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ENABLE_TRAFFIC_STATS_POLL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # operator++ for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$608(Lcom/android/server/wifi/WifiTrafficPoller;)I

    .line 141
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # invokes: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v2

    invoke-static {p0, v6, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 134
    goto :goto_1

    .line 148
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$800(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    const-string v2, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TRAFFIC_STATS_POLL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num clients "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # invokes: Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$700(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v2

    invoke-static {p0, v6, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 161
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Messenger;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "WifiTrafficPoller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD_CLIENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    :pswitch_5
    const-string v2, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle PING_COMPLETE, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1002(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 178
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1102(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 179
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1202(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 181
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1300(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 183
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 187
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 189
    const-string v2, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle PING_RESULT, WiFi Info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_5

    .line 192
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # operator++ for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1408(Lcom/android/server/wifi/WifiTrafficPoller;)I

    .line 194
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1400(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v2

    if-le v2, v7, :cond_4

    .line 196
    const-string v2, "WifiTrafficPoller"

    const-string v3, "WARNING !!! Network error detected !!! Re-Associate..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 199
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1300(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1500(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1002(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 202
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    invoke-static {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1000(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->start()V

    goto/16 :goto_0

    .line 207
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->access$1402(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
