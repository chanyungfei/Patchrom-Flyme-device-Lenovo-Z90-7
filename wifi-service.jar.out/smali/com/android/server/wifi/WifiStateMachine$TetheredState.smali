.class Lcom/android/server/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8755
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 8758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8759
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8760
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8761
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 8764
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8766
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 8767
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8768
    monitor-exit v1

    .line 8769
    return-void

    .line 8768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 8857
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 8858
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8859
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8860
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 8861
    return-void

    .line 8859
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 8773
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8775
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v5, v4

    .line 8852
    :cond_0
    :goto_0
    return v5

    .line 8777
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 8778
    .local v3, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, v3, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8779
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8780
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v9, v4}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 8781
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v9, v5}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 8785
    .end local v3    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "Untethering before stopping AP"

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8786
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v6, 0xa

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8787
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$27800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8788
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8790
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 8794
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process AP_STA_CONNECTED_EVENT, Client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8795
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8796
    .local v0, "address":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 8797
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8798
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v4

    new-instance v7, Landroid/net/wifi/HotspotClient;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8800
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8801
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_0

    .line 8800
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 8804
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process AP_STA_DISCONNECTED_EVENT, Client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8805
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8806
    .restart local v0    # "address":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 8807
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 8808
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_3

    iget-boolean v4, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v4, :cond_3

    .line 8809
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8811
    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8812
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_0

    .line 8811
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 8815
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process M_CMD_BLOCK_CLIENT, Client: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8816
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v2

    .line 8817
    .local v2, "ok":Z
    if-eqz v2, :cond_5

    .line 8818
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 8819
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 8820
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_4

    .line 8821
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 8825
    :goto_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8826
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 8832
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, p1, v8, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8823
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 8825
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v4

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 8828
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to block client: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v4, v6

    .line 8832
    goto :goto_3

    .line 8835
    .end local v2    # "ok":Z
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process M_CMD_UNBLOCK_CLIENT, Client: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8836
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v2

    .line 8837
    .restart local v2    # "ok":Z
    if-eqz v2, :cond_8

    .line 8838
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 8839
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$27700()Ljava/util/HashMap;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8840
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 8841
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 8846
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget v7, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {v4, p1, v7, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8840
    :catchall_3
    move-exception v4

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 8843
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unblock "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/HotspotClient;

    iget-object v4, v4, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 8775
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_4
        0x200ab -> :sswitch_5
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch
.end method
