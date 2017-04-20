.class Lcom/android/server/audio/AudioService$FmModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 6119
    iput-object p1, p0, Lcom/android/server/audio/AudioService$FmModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6120
    iput-object p2, p0, Lcom/android/server/audio/AudioService$FmModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 6121
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 6124
    # getter for: Lcom/android/server/audio/AudioService;->mFmModeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$9000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6125
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "FmMode client died"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    iget-object v1, p0, Lcom/android/server/audio/AudioService$FmModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFmModeStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$FmModeStackEntry;

    .line 6127
    .local v0, "fse":Lcom/android/server/audio/AudioService$FmModeStackEntry;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$FmModeStackEntry;->unlinkToDeath()V

    .line 6129
    monitor-exit v2

    .line 6130
    return-void

    .line 6129
    .end local v0    # "fse":Lcom/android/server/audio/AudioService$FmModeStackEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6133
    iget-object v0, p0, Lcom/android/server/audio/AudioService$FmModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
