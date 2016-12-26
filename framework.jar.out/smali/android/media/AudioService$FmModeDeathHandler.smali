.class Landroid/media/AudioService$FmModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 6162
    iput-object p1, p0, Landroid/media/AudioService$FmModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6163
    iput-object p2, p0, Landroid/media/AudioService$FmModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 6164
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 6167
    # getter for: Landroid/media/AudioService;->mFmModeLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/AudioService;->access$9900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6168
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "FmMode client died"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6169
    iget-object v1, p0, Landroid/media/AudioService$FmModeDeathHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mFmModeStack:Ljava/util/Stack;
    invoke-static {v1}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FmModeStackEntry;

    .line 6170
    .local v0, "fse":Landroid/media/AudioService$FmModeStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FmModeStackEntry;->unlinkToDeath()V

    .line 6172
    monitor-exit v2

    .line 6173
    return-void

    .line 6172
    .end local v0    # "fse":Landroid/media/AudioService$FmModeStackEntry;
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
    .line 6176
    iget-object v0, p0, Landroid/media/AudioService$FmModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
