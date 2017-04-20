.class public final Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PermReqResult"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:Z

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;)V
    .locals 1

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 2125
    monitor-enter p0

    .line 2126
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2128
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2129
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2132
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2133
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->mResult:Z

    return v0

    .line 2132
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(Z)V
    .locals 1
    .param p1, "res"    # Z

    .prologue
    .line 2117
    monitor-enter p0

    .line 2118
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->mHasResult:Z

    .line 2119
    iput-boolean p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->mResult:Z

    .line 2120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2121
    monitor-exit p0

    .line 2122
    return-void

    .line 2121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
