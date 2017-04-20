.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7510
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 7514
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 7515
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 54
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7528
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    sparse-switch v47, :sswitch_data_0

    .line 8364
    const/16 v47, 0x0

    .line 8366
    :goto_0
    return v47

    .line 7530
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v47

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 7531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$13802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7532
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 7533
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 7535
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 7537
    :cond_1
    if-eqz v6, :cond_2

    .line 7539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v48

    monitor-enter v48

    .line 7540
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v50, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v50 .. v50}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v50

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v49

    move-object/from16 v0, v47

    move/from16 v1, v49

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$13802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7542
    monitor-exit v48
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7544
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v47

    const v48, 0x2402b

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8366
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v47, 0x1

    goto :goto_0

    .line 7542
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v47

    :try_start_1
    monitor-exit v48
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v47

    .line 7547
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v47

    const/16 v48, 0x2

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 7548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v47

    const v48, 0x24007

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 7549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-nez v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-eqz v47, :cond_3

    .line 7554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-nez v47, :cond_3

    .line 7555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)Z

    move-result v47

    if-nez v47, :cond_3

    .line 7556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 7563
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    .line 7564
    .local v36, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    const v48, 0x2400d

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_4

    const-string v15, "temp-disabled"

    .line 7566
    .local v15, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectModeState SSID state="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v48

    monitor-enter v48

    .line 7569
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v50, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    const v51, 0x2400e

    move/from16 v0, v47

    move/from16 v1, v51

    if-ne v0, v1, :cond_5

    const/16 v47, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v47

    move-object/from16 v3, v36

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7571
    monitor-exit v48

    goto/16 :goto_1

    :catchall_1
    move-exception v47

    monitor-exit v48
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v47

    .line 7564
    .end local v15    # "en":Ljava/lang/String;
    :cond_4
    const-string v15, "re-enabled"

    goto/16 :goto_2

    .line 7569
    .restart local v15    # "en":Ljava/lang/String;
    :cond_5
    const/16 v47, 0x0

    goto :goto_3

    .line 7574
    .end local v15    # "en":Ljava/lang/String;
    .end local v36    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v34

    .line 7577
    .local v34, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v47

    if-nez v47, :cond_7

    .line 7578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v47

    sget-object v48, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_6

    .line 7579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7581
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Detected an interface down, restart driver"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$14300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x2000d

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7592
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-nez v47, :cond_9

    sget-object v47, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v47

    sget-object v48, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_9

    .line 7594
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v47

    if-eqz v47, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7595
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$14500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7602
    :cond_9
    sget-object v47, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_a

    .line 7603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v47

    if-eqz v47, :cond_a

    .line 7604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    .line 7608
    :cond_a
    sget-object v47, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_3

    .line 7609
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/wifi/StateChangeResult;

    .line 7610
    .local v35, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v35, :cond_3

    .line 7611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v48, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$14702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 7616
    .end local v34    # "state":Landroid/net/wifi/SupplicantState;
    .end local v35    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_b

    .line 7617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$2702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7620
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 7621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$2702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 7625
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7627
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v47

    if-nez v47, :cond_c

    .line 7629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Not authorized to update network  config="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7637
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v29

    .line 7638
    .local v29, "res":I
    if-gez v29, :cond_e

    .line 7639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7662
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x20034

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v29

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7641
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 7642
    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_d

    if-eqz v8, :cond_d

    .line 7643
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v47, v0

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v48, v0

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_d

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_d

    .line 7648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 7650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 7653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v47

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, -0x3

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-virtual/range {v47 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .line 7665
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v29    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 7666
    .local v22, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v22

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v47

    if-nez v47, :cond_f

    .line 7668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Not authorized to remove network  cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7675
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v25

    .line 7676
    .local v25, "ok":Z
    if-nez v25, :cond_10

    .line 7677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7679
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    if-eqz v25, :cond_11

    const/16 v47, 0x1

    :goto_5
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_11
    const/16 v47, -0x1

    goto :goto_5

    .line 7682
    .end local v22    # "netId":I
    .end local v25    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_12

    const/4 v13, 0x1

    .line 7683
    .local v13, "disableOthers":Z
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 7684
    .restart local v22    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7685
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_13

    .line 7686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "No network with id = "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 7682
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v22    # "netId":I
    :cond_12
    const/4 v13, 0x0

    goto :goto_6

    .line 7693
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v13    # "disableOthers":Z
    .restart local v22    # "netId":I
    :cond_13
    if-eqz v13, :cond_14

    .line 7694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v47

    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v22

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 7698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v47

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 7706
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "any"

    move-object/from16 v0, v47

    move/from16 v1, v22

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7708
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v41, v0

    .line 7709
    .local v41, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    move/from16 v2, v41

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v25

    .line 7710
    .restart local v25    # "ok":Z
    if-nez v25, :cond_15

    .line 7711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7714
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    if-eqz v25, :cond_16

    const/16 v47, 0x1

    :goto_7
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_16
    const/16 v47, -0x1

    goto :goto_7

    .line 7717
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v22    # "netId":I
    .end local v25    # "ok":Z
    .end local v41    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    .line 7718
    .local v38, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v48

    sub-long v48, v38, v48

    const-wide/32 v50, 0x927c0

    cmp-long v47, v48, v50

    if-lez v47, :cond_3

    .line 7719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-wide/from16 v1, v38

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15102(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7724
    .end local v38    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    const/16 v49, 0x5

    invoke-virtual/range {v47 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_17

    .line 7726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25013

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7728
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25012

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7734
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7735
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    .line 7736
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 7738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x20049

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7743
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7746
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto/16 :goto_1

    .line 7749
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v25

    .line 7751
    .restart local v25    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v47

    if-eqz v47, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "did save config "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7752
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const v49, 0x2003a

    if-eqz v25, :cond_19

    const/16 v47, 0x1

    :goto_8
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move/from16 v3, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7755
    const-string v47, "backup"

    invoke-static/range {v47 .. v47}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 7757
    .local v16, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v16, :cond_3

    .line 7759
    :try_start_3
    const-string v47, "com.android.providers.settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 7760
    :catch_0
    move-exception v47

    goto/16 :goto_1

    .line 7752
    .end local v16    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_19
    const/16 v47, -0x1

    goto :goto_8

    .line 7766
    .end local v25    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v49

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move-object/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7770
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 7771
    .local v23, "networkId":I
    const/16 v18, 0x0

    .line 7772
    .local v18, "identitySent":Z
    const/4 v14, -0x1

    .line 7774
    .local v14, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    if-eqz v47, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1a

    .line 7776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    .line 7780
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    if-eqz v47, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v47, v0

    const/16 v48, 0x3

    invoke-virtual/range {v47 .. v48}, Ljava/util/BitSet;->get(I)Z

    move-result v47

    if-eqz v47, :cond_1d

    const/16 v47, 0x4

    move/from16 v0, v47

    if-eq v14, v0, :cond_1b

    const/16 v47, 0x5

    move/from16 v0, v47

    if-eq v14, v0, :cond_1b

    const/16 v47, 0x6

    move/from16 v0, v47

    if-ne v14, v0, :cond_1d

    .line 7787
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v47

    const-string v48, "phone"

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    .line 7789
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v37, :cond_1d

    .line 7790
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v19

    .line 7791
    .local v19, "imsi":Ljava/lang/String;
    const-string v21, ""

    .line 7793
    .local v21, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v47

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1c

    .line 7794
    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v21

    .line 7796
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v14, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 7798
    .local v17, "identity":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v47

    if-nez v47, :cond_1d

    .line 7799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 7800
    const/16 v18, 0x1

    .line 7804
    .end local v17    # "identity":Ljava/lang/String;
    .end local v19    # "imsi":Ljava/lang/String;
    .end local v21    # "mccMnc":Ljava/lang/String;
    .end local v37    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1d
    if-nez v18, :cond_3

    .line 7806
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    .line 7807
    .local v33, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    if-eqz v47, :cond_1e

    if-eqz v33, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "\""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "\""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_1e

    .line 7810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    move-object/from16 v0, v48

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "AUTH_FAILED no identity"

    const/16 v51, 0x0

    invoke-virtual/range {v47 .. v51}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 7816
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7822
    .end local v14    # "eapMethod":I
    .end local v18    # "identitySent":Z
    .end local v23    # "networkId":I
    .end local v33    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7823
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 7824
    .local v28, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v28, :cond_21

    .line 7825
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v47, v0

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1f

    .line 7826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7827
    :cond_1f
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v47, v0

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_20

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v47, v0

    const/16 v48, 0x6

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 7829
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 7832
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Invalid sim auth request"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7836
    .end local v28    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v49

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move-object/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7840
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v50

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7845
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 7850
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_1

    .line 7853
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 7857
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v47

    if-eqz v47, :cond_3

    .line 7858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 7865
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7866
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 7876
    :sswitch_18
    const/4 v12, 0x0

    .line 7877
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$15400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_22

    .line 7881
    const/4 v12, 0x1

    .line 7882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7886
    :cond_22
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 7887
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 7888
    .restart local v22    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 7889
    .local v31, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " my state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$15500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " roam="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7894
    if-nez v8, :cond_23

    .line 7895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7900
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v47

    move/from16 v1, v22

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 7903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v30

    .line 7906
    .local v30, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v22

    .line 7907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7912
    if-nez v8, :cond_24

    .line 7913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7916
    :cond_24
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    move/from16 v0, v22

    move/from16 v1, v47

    if-eq v0, v1, :cond_25

    .line 7917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " but got"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7922
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v47

    if-nez v47, :cond_3

    .line 7924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_26

    .line 7926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x9

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7932
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v22

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 7936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v47

    if-eqz v47, :cond_29

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v20, v0

    .line 7939
    .local v20, "lastConnectUid":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v47

    if-eqz v47, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v47

    if-eqz v47, :cond_2e

    .line 7941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7944
    if-eqz v8, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v47

    if-nez v47, :cond_27

    .line 7958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 7961
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v31

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v47

    if-nez v47, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-eqz v47, :cond_2a

    .line 7963
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7936
    .end local v20    # "lastConnectUid":I
    :cond_29
    const/16 v20, -0x1

    goto/16 :goto_9

    .line 7964
    .restart local v20    # "lastConnectUid":I
    :cond_2a
    if-eqz v12, :cond_2b

    .line 7965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7968
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-nez v47, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-eqz v47, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v47

    if-eqz v47, :cond_2d

    .line 7969
    const v11, 0xea60

    .line 7970
    .local v11, "delay":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$200()Z

    move-result v47

    if-eqz v47, :cond_2c

    .line 7971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Starting PNO alarm: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7973
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v47

    const/16 v48, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    int-to-long v0, v11

    move-wide/from16 v52, v0

    add-long v50, v50, v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPnoIntent:Landroid/app/PendingIntent;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v49

    move-object/from16 v0, v47

    move/from16 v1, v48

    move-wide/from16 v2, v50

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7977
    .end local v11    # "delay":I
    :cond_2d
    sget v47, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v47, v47, 0x1

    sput v47, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_1

    .line 7980
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Failed to connect config: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " netId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7987
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v20    # "lastConnectUid":I
    .end local v22    # "netId":I
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v31    # "roam":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_1

    .line 7990
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_1

    .line 7994
    :sswitch_1b
    const-string v47, "WifiStateMachine"

    const-string v48, "Wlan: start connect..."

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8002
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 8003
    .restart local v22    # "netId":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 8004
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v47

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8005
    const/16 v42, 0x0

    .line 8008
    .local v42, "updatedExisting":Z
    if-eqz v8, :cond_31

    .line 8013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v47

    if-nez v47, :cond_2f

    .line 8015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Not authorized to update network  config="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x9

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8024
    :cond_2f
    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    .line 8025
    .local v9, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    .line 8027
    .local v32, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v32, :cond_30

    .line 8031
    move-object/from16 v8, v32

    .line 8032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " configKey="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8034
    const/16 v47, 0x0

    move/from16 v0, v47

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 8035
    const/16 v47, 0x0

    move/from16 v0, v47

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 8036
    const/16 v42, 0x1

    .line 8039
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v30

    .line 8040
    .restart local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v22

    .line 8042
    .end local v9    # "configKey":Ljava/lang/String;
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v32    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 8044
    if-nez v8, :cond_32

    .line 8045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " my state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8052
    :cond_32
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v47, v0

    if-eqz v47, :cond_35

    const-string v44, " skipped"

    .line 8053
    .local v44, "wasSkipped":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "CONNECT_NETWORK id="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " config="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " supstate="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " my state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid = "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "any"

    move-object/from16 v0, v47

    move/from16 v1, v22

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8064
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v47, v0

    const/16 v48, 0x3f2

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v47, v0

    const/16 v48, 0x3e8

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_34

    .line 8072
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "CONNECT_NETWORK"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 8075
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v47

    if-nez v47, :cond_3

    .line 8077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v47, v0

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_36

    .line 8079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x9

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8052
    .end local v44    # "wasSkipped":Ljava/lang/String;
    :cond_35
    const-string v44, ""

    goto/16 :goto_a

    .line 8084
    .restart local v44    # "wasSkipped":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v26

    .line 8089
    .local v26, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v47

    const/16 v48, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v22

    move/from16 v2, v48

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8093
    const/4 v12, 0x0

    .line 8094
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v47

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v22

    if-eq v0, v1, :cond_37

    .line 8099
    const/4 v12, 0x1

    .line 8100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8104
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v22

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 8106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v47

    if-eqz v47, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v47

    if-eqz v47, :cond_3a

    .line 8108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$14902(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v47

    const v48, 0x25001

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25003

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8114
    if-eqz v12, :cond_38

    .line 8116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$15900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$16600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8117
    :cond_38
    if-eqz v42, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$16700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$16800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v22

    if-ne v0, v1, :cond_39

    .line 8121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8127
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8130
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Failed to connect config: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " netId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25002

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8137
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v22    # "netId":I
    .end local v26    # "persist":Z
    .end local v42    # "updatedExisting":Z
    .end local v44    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v47

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8140
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8141
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 8142
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_3b

    .line 8143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " my state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$17200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25008

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8151
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v48

    invoke-direct {v0, v8}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8152
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    .line 8153
    .local v24, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "SAVE_NETWORK id="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " config="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " supstate="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " my state "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8160
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    const v48, 0x25007

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3c

    const/4 v7, 0x1

    .line 8161
    .local v7, "checkUid":Z
    :goto_b
    if-eqz v7, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v47

    if-nez v47, :cond_3d

    .line 8163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Not authorized to update network  config="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25008

    const/16 v49, 0x9

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8160
    .end local v7    # "checkUid":Z
    :cond_3c
    const/4 v7, 0x0

    goto :goto_b

    .line 8172
    .restart local v7    # "checkUid":Z
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v30

    .line 8173
    .restart local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v47

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_43

    .line 8174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v47

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_3f

    .line 8175
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v47

    if-eqz v47, :cond_3e

    .line 8179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Reconfiguring IP on connection"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8184
    :cond_3e
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v47

    if-eqz v47, :cond_3f

    .line 8185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Reconfiguring proxy on connection"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8189
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25009

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 8192
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$200()Z

    move-result v47

    if-eqz v47, :cond_40

    .line 8193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Success save network nid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8197
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v48

    monitor-enter v48

    .line 8203
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    const v49, 0x25007

    move/from16 v0, v47

    move/from16 v1, v49

    if-ne v0, v1, :cond_42

    const/16 v43, 0x1

    .line 8206
    .local v43, "user":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v27

    .line 8209
    .local v27, "persistConnect":Z
    if-eqz v43, :cond_41

    .line 8210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 8211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 8214
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v47

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v49

    move-object/from16 v0, v47

    move/from16 v1, v49

    move/from16 v2, v43

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 8217
    monitor-exit v48

    goto/16 :goto_1

    .end local v27    # "persistConnect":Z
    .end local v43    # "user":Z
    :catchall_2
    move-exception v47

    monitor-exit v48
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v47

    .line 8203
    :cond_42
    const/16 v43, 0x0

    goto :goto_c

    .line 8219
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Failed to save network"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25008

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8227
    .end local v7    # "checkUid":Z
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "nid":I
    .end local v30    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    .line 8229
    .local v40, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v40, :cond_44

    .line 8230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17802(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8235
    :goto_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 8237
    .restart local v22    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v22

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v47

    if-nez v47, :cond_45

    .line 8239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Not authorized to forget network  cnid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " uid="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25005

    const/16 v49, 0x9

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8232
    .end local v22    # "netId":I
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v48

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17802(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_d

    .line 8247
    .restart local v22    # "netId":I
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v47

    if-eqz v47, :cond_46

    .line 8248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25006

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v48

    move/from16 v1, v49

    move-object/from16 v2, v47

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 8252
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Failed to forget network"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x25005

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8258
    .end local v22    # "netId":I
    .end local v40    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/net/wifi/WpsInfo;

    .line 8260
    .local v45, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v45

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_0

    .line 8273
    new-instance v46, Landroid/net/wifi/WpsResult;

    sget-object v47, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v46 .. v47}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 8274
    .local v46, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Invalid setup for WPS"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8277
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    const/16 v48, -0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8279
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v47, v0

    sget-object v48, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_47

    .line 8280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x2500b

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move-object/from16 v3, v46

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 8281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8262
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->clearRandomMacOui()Z
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 8263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRandomMacCleared:Z
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v46

    .line 8265
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_e

    .line 8267
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v46

    .line 8268
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_e

    .line 8270
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v46

    .line 8271
    .restart local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_e

    .line 8283
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Failed to start WPS with config "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const v48, 0x2500c

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8288
    .end local v45    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v46    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v47

    if-eqz v47, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "Network connection established"

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8289
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$5702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5602(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8308
    :sswitch_21
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v47

    if-eqz v47, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    const-string v48, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8309
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v48

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8313
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, [Landroid/net/wifi/ScanResult;

    check-cast v47, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    .line 8318
    :sswitch_23
    const-string v47, "WifiStateMachine"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, NetworkId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ", AutoConnectable: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    const/16 v50, 0x1

    move/from16 v0, v47

    move/from16 v1, v50

    if-ne v0, v1, :cond_4a

    const/16 v47, 0x1

    :goto_f
    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkAutoConnectable(IZ)Z

    move-result v47

    if-nez v47, :cond_4b

    .line 8322
    const-string v47, "WifiStateMachine"

    const-string v48, "M_CMD_SET_NETWORK_AUTO_CONNECTABLE, setNetworkAutoConnectable() failed"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8320
    :cond_4a
    const/16 v47, 0x0

    goto :goto_f

    .line 8327
    :cond_4b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_4c

    .line 8329
    const-string v47, "WifiStateMachine"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Set Auto Connectable to TRUE, NetworkId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ", currentNetworkId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    const-string v49, "any"

    invoke-virtual/range {v47 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v50, v0

    invoke-virtual/range {v47 .. v50}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v47

    if-nez v47, :cond_4d

    .line 8337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2400()I

    move-result v48

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v47 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8344
    :cond_4c
    const-string v47, "WifiStateMachine"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Set Auto Connectable to FALSE, NetworkId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ", currentNetworkId: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v49, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v49 .. v49}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$5900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_4d

    .line 8349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v47 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v47

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v47 .. v49}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v47

    if-nez v47, :cond_4d

    .line 8351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 8360
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, v49

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7528
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x200fa -> :sswitch_23
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
    .end sparse-switch

    .line 8260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
