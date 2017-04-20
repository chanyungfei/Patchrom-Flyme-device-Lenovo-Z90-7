.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$PingThread;,
        Lcom/android/server/wifi/WifiTrafficPoller$PingResult;,
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final MAX_NETWORK_ERROR_COUNT:I = 0x3

.field private static final NO_RX_DATA_TIMEOUT:I = 0x5

.field private static final PING_COMPLETE:I = 0xa

.field private static final PING_INTERVAL:I = 0x3c

.field private static final PING_RESULT_NETWORK_ERROR:I = 0x3

.field private static final PING_RESULT_OK:I = 0x0

.field private static final PING_RESULT_POOR_INTERNET:I = 0x2

.field private static final PING_RESULT_POOR_NETWORK:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private DBG:Z

.field private final TAG:Ljava/lang/String;

.field private VDBG:Z

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkErrorCount:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoRxCounter:I

.field private mPingCounter:I

.field private mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    .line 55
    const-string v1, "WifiTrafficPoller"

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->TAG:Ljava/lang/String;

    .line 67
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 68
    iput v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    iput-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 345
    iput v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 346
    iput v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 347
    iput v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    .line 85
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$608(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 226
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1
.end method

.method private notifyOnDataActivity()V
    .locals 22

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .local v12, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 235
    .local v10, "preRxPkts":J
    const/4 v6, 0x0

    .line 237
    .local v6, "dataActivity":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 238
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 240
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    if-eqz v9, :cond_0

    .line 241
    const-string v9, "WifiTrafficPoller"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " packet count Tx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Rx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v9, v12, v18

    if-gtz v9, :cond_1

    const-wide/16 v18, 0x0

    cmp-long v9, v10, v18

    if-lez v9, :cond_5

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v18, v0

    sub-long v16, v18, v12

    .line 249
    .local v16, "sent":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v18, v0

    sub-long v14, v18, v10

    .line 250
    .local v14, "received":J
    const-wide/16 v18, 0x0

    cmp-long v9, v16, v18

    if-lez v9, :cond_2

    .line 251
    or-int/lit8 v6, v6, 0x2

    .line 253
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v9, v14, v18

    if-lez v9, :cond_3

    .line 254
    or-int/lit8 v6, v6, 0x1

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    if-eq v6, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 258
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 259
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v9, :cond_4

    .line 260
    const-string v9, "WifiTrafficPoller"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "notifying of data activity "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .line 264
    .local v5, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 265
    .local v8, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v8, Landroid/os/Message;->what:I

    .line 266
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 268
    :try_start_0
    invoke-virtual {v5, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v9

    goto :goto_0

    .line 279
    .end local v5    # "client":Landroid/os/Messenger;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v14    # "received":J
    .end local v16    # "sent":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 281
    const/4 v4, 0x0

    .line 283
    .local v4, "bStartPing":Z
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 285
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 287
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    const/16 v18, 0x5

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    .line 289
    const/4 v4, 0x1

    .line 297
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 299
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-lt v9, v0, :cond_7

    .line 301
    const/4 v4, 0x1

    .line 304
    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    .line 306
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 307
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 309
    new-instance v9, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 310
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->start()V

    .line 320
    .end local v4    # "bStartPing":Z
    :cond_8
    :goto_2
    return-void

    .line 294
    .restart local v4    # "bStartPing":Z
    :cond_9
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    goto :goto_1

    .line 313
    .end local v4    # "bStartPing":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_8

    .line 315
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 316
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 317
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    goto :goto_2
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 123
    if-lez p1, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    goto :goto_0
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method
