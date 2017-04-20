.class public final Lcom/android/server/am/AppPcService$PermControlService$PermReq;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PermReq"
.end annotation


# instance fields
.field public final code:I

.field public isPermUIShowing:Z

.field private mHandler:Landroid/os/Handler;

.field public mIsPermUIShowingLock:Ljava/lang/Object;

.field public final packageName:Ljava/lang/String;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;I)V
    .locals 1
    .param p2, "_uid"    # I
    .param p3, "_packageName"    # Ljava/lang/String;
    .param p4, "_code"    # I

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    .line 2047
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    .line 2050
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->uid:I

    .line 2051
    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->packageName:Ljava/lang/String;

    .line 2052
    iput p4, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->code:I

    .line 2053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    .line 2057
    return-void
.end method


# virtual methods
.method public isPermUIShowing()Z
    .locals 2

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2060
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    monitor-exit v1

    return v0

    .line 2061
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyAll(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 2104
    monitor-enter p0

    .line 2105
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2106
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .line 2107
    .local v0, "res":Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->set(Z)V

    .line 2108
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2110
    .end local v0    # "res":Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2111
    return-void
.end method

.method public quitHandle()V
    .locals 2

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    .line 2073
    :cond_0
    return-void
.end method

.method public register(Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V
    .locals 1
    .param p1, "res"    # Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .prologue
    .line 2098
    monitor-enter p0

    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    monitor-exit p0

    .line 2101
    return-void

    .line 2100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendTimeOutMessageDelay()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2092
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2094
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2096
    :cond_0
    return-void
.end method

.method public setHandle(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handle"    # Landroid/os/Handler;

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    .line 2066
    return-void
.end method

.method public setIfPermUIShowing(Z)V
    .locals 2
    .param p1, "_isPermUIShowing"    # Z

    .prologue
    .line 2075
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2076
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    if-ne p1, v0, :cond_0

    .line 2077
    monitor-exit v1

    .line 2089
    :goto_0
    return-void

    .line 2087
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    .line 2088
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
