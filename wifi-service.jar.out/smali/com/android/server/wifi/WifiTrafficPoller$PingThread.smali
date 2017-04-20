.class Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
.super Ljava/lang/Thread;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingThread"
.end annotation


# static fields
.field private static final KEY_MSEC:Ljava/lang/String; = " ms"

.field private static final KEY_PACKET_LOSS:Ljava/lang/String; = "% packet loss"

.field private static final KEY_RECEIVE_PACKET_NUM:Ljava/lang/String; = " received"

.field private static final KEY_RTT:Ljava/lang/String; = "rtt min/avg/max/mdev = "

.field private static final KEY_TRANSMIT_PACKET_NUM:Ljava/lang/String; = " packets transmitted"

.field private static final KEY_UNKNOWN_HOST:Ljava/lang/String; = "ping: unknown host"

.field private static final PING_BUFFER_SIZE:I = 0x400

.field private static final PING_COMMAND:Ljava/lang/String; = "ping -c 5 -w 3000 "

.field private static final TAG:Ljava/lang/String; = "PingThread"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 591
    const-string v0, "PingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mContext:Landroid/content/Context;

    .line 594
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    .line 595
    return-void
.end method

.method private MSG_DEBUG(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "PingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ PingThread ] :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    return-void
.end method

.method private MSG_ERROR(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v0, "PingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ PingThread ] :: Error :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method private getGateway()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 397
    const-string v6, "failed to get ConnectivityManager"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 401
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 403
    .local v4, "lp":Landroid/net/LinkProperties;
    if-nez v4, :cond_2

    .line 405
    const-string v6, "failed to get link preperty"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    .line 411
    .local v5, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    if-nez v5, :cond_3

    .line 413
    const-string v6, "failed to get routes"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 419
    .local v3, "info":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "gw":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    .locals 29
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v19, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    .line 434
    .local v19, "result":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    .line 435
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    .line 437
    if-nez p1, :cond_0

    .line 439
    const-string v25, "ping, invalid address"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 586
    :goto_0
    return-object v19

    .line 444
    :cond_0
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->address:Ljava/lang/String;

    .line 447
    const/16 v17, 0x0

    .line 449
    .local v17, "process":Ljava/lang/Process;
    const/4 v12, 0x0

    .line 450
    .local v12, "inputStream":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 452
    .local v8, "errorStream":Ljava/io/DataInputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v4, v0, [B

    .line 456
    .local v4, "buffer":[B
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ping -c 5 -w 3000 "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v17

    .line 458
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "start to ping: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I

    move-result v21

    .line 462
    .local v21, "status":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " complete, status: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 464
    new-instance v13, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .local v13, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 468
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .local v9, "errorStream":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v13, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 469
    .local v5, "count":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_c

    .line 471
    new-instance v11, Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v11, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 473
    .local v11, "input":Ljava/lang/String;
    const-string v25, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 474
    .local v14, "line":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v25, v0

    if-lez v25, :cond_c

    .line 476
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_c

    .line 478
    aget-object v25, v14, v10

    if-eqz v25, :cond_5

    aget-object v25, v14, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    .line 481
    const/16 v23, -0x1

    .local v23, "transmit_num":I
    const/16 v18, -0x1

    .local v18, "receive_num":I
    const/16 v16, 0x0

    .local v16, "packet_loss":I
    const/4 v3, -0x1

    .line 483
    .local v3, "avg_rtt":I
    aget-object v25, v14, v10

    const-string v26, " packets transmitted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    if-eqz v25, :cond_1

    .line 487
    :try_start_3
    aget-object v25, v14, v10

    aget-object v26, v14, v10

    const-string v27, " packets transmitted"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    aget-object v27, v14, v10

    const-string v28, " packets transmitted"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    .line 494
    :cond_1
    :goto_2
    :try_start_4
    aget-object v25, v14, v10

    const-string v26, " received"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v25

    if-eqz v25, :cond_2

    .line 498
    :try_start_5
    aget-object v25, v14, v10

    aget-object v26, v14, v10

    const-string v27, " received"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    aget-object v27, v14, v10

    const-string v28, " received"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    .line 505
    :cond_2
    :goto_3
    :try_start_6
    aget-object v25, v14, v10

    const-string v26, "% packet loss"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v25

    if-eqz v25, :cond_3

    .line 509
    :try_start_7
    aget-object v25, v14, v10

    const/16 v26, 0x0

    aget-object v27, v14, v10

    const-string v28, "% packet loss"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 510
    .local v22, "sub1":Ljava/lang/String;
    const-string v25, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 511
    .local v15, "loss":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v16

    .line 518
    .end local v15    # "loss":Ljava/lang/String;
    .end local v22    # "sub1":Ljava/lang/String;
    :cond_3
    :goto_4
    :try_start_8
    aget-object v25, v14, v10

    const-string v26, "rtt min/avg/max/mdev = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v25

    if-eqz v25, :cond_4

    .line 522
    :try_start_9
    aget-object v25, v14, v10

    const-string v26, "rtt min/avg/max/mdev = "

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 523
    .local v20, "rtt":Ljava/lang/String;
    const-string v25, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 524
    .local v24, "value":[Ljava/lang/String;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 526
    const/16 v25, 0x1

    aget-object v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 534
    .end local v20    # "rtt":Ljava/lang/String;
    .end local v24    # "value":[Ljava/lang/String;
    :cond_4
    :goto_5
    if-lez v23, :cond_5

    if-lez v18, :cond_5

    .line 536
    sub-int v25, v23, v18

    mul-int/lit8 v25, v25, 0x64

    :try_start_a
    div-int v25, v25, v23

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    .line 476
    .end local v3    # "avg_rtt":I
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 488
    .restart local v3    # "avg_rtt":I
    .restart local v16    # "packet_loss":I
    .restart local v18    # "receive_num":I
    .restart local v23    # "transmit_num":I
    :catch_0
    move-exception v6

    .line 490
    .local v6, "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured when get transmit packet num"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 548
    .end local v3    # "avg_rtt":I
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    move-object v12, v13

    .line 550
    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .end local v21    # "status":I
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    :goto_6
    :try_start_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 553
    if-eqz v12, :cond_6

    .line 557
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 558
    const/4 v12, 0x0

    .line 565
    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    .line 569
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 570
    const/4 v8, 0x0

    .line 577
    :cond_7
    :goto_8
    if-eqz v17, :cond_8

    .line 579
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 580
    const/16 v17, 0x0

    .line 584
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " complete, average rtt: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms, package loss: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "avg_rtt":I
    .restart local v5    # "count":I
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v10    # "i":I
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v14    # "line":[Ljava/lang/String;
    .restart local v16    # "packet_loss":I
    .restart local v18    # "receive_num":I
    .restart local v21    # "status":I
    .restart local v23    # "transmit_num":I
    :catch_2
    move-exception v6

    .line 501
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v25, "PingThread"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " occured when get receive packet num"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 553
    .end local v3    # "avg_rtt":I
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :catchall_0
    move-exception v25

    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .end local v21    # "status":I
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    :goto_a
    if-eqz v12, :cond_9

    .line 557
    :try_start_f
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 558
    const/4 v12, 0x0

    .line 565
    :cond_9
    :goto_b
    if-eqz v8, :cond_a

    .line 569
    :try_start_10
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 570
    const/4 v8, 0x0

    .line 577
    :cond_a
    :goto_c
    if-eqz v17, :cond_b

    .line 579
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 580
    const/16 v17, 0x0

    :cond_b
    throw v25

    .line 512
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "avg_rtt":I
    .restart local v5    # "count":I
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v10    # "i":I
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v14    # "line":[Ljava/lang/String;
    .restart local v16    # "packet_loss":I
    .restart local v18    # "receive_num":I
    .restart local v21    # "status":I
    .restart local v23    # "transmit_num":I
    :catch_3
    move-exception v6

    .line 514
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured when get packet loss"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 528
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 530
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured when get average rtt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 542
    .end local v3    # "avg_rtt":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :cond_c
    invoke-virtual {v9, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 543
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_d

    .line 545
    new-instance v7, Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v7, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 546
    .local v7, "error":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " complete, error stream: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 553
    .end local v7    # "error":Ljava/lang/String;
    :cond_d
    if-eqz v13, :cond_e

    .line 557
    :try_start_12
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 558
    const/4 v12, 0x0

    .line 565
    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    :goto_d
    if-eqz v9, :cond_f

    .line 569
    :try_start_13
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 570
    const/4 v8, 0x0

    .line 577
    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    :goto_e
    if-eqz v17, :cond_8

    .line 579
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 580
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 559
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    :catch_5
    move-exception v6

    .line 561
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_d

    .line 571
    :catch_6
    move-exception v6

    .line 573
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_f
    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    goto :goto_e

    .line 559
    .end local v5    # "count":I
    .end local v21    # "status":I
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 561
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 571
    :catch_8
    move-exception v6

    .line 573
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 559
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 561
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " occured"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 571
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v6

    .line 573
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " occured"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 553
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v25

    goto/16 :goto_a

    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v21    # "status":I
    :catchall_2
    move-exception v25

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_a

    .line 548
    .end local v21    # "status":I
    :catch_b
    move-exception v6

    goto/16 :goto_6

    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v21    # "status":I
    :catch_c
    move-exception v6

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_6
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/16 v6, 0x14

    .line 600
    const/4 v1, 0x0

    .local v1, "gatewayResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    const/4 v0, 0x0

    .line 602
    .local v0, "baiduResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->getGateway()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "gw":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 606
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-result-object v1

    .line 609
    :cond_0
    const-string v4, "www.baidu.com"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-result-object v0

    .line 611
    const/4 v3, 0x0

    .line 613
    .local v3, "result":I
    if-eqz v1, :cond_3

    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 616
    const/4 v3, 0x3

    .line 633
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 637
    :cond_2
    return-void

    .line 618
    :cond_3
    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    if-gt v4, v6, :cond_4

    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    if-le v4, v7, :cond_5

    .line 622
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 625
    :cond_5
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    if-gt v4, v6, :cond_6

    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    if-gt v4, v7, :cond_6

    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    iget v5, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    sub-int/2addr v4, v5

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_1

    .line 630
    :cond_6
    const/4 v3, 0x2

    goto :goto_0
.end method
