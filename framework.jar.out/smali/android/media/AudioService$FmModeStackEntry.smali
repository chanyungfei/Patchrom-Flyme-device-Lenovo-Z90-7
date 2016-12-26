.class Landroid/media/AudioService$FmModeStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmModeStackEntry"
.end annotation


# instance fields
.field public mCallingUid:I

.field public mClientId:Ljava/lang/String;

.field public mHandler:Landroid/media/AudioService$FmModeDeathHandler;

.field public mOn:Z

.field public mPackageName:Ljava/lang/String;

.field public mSourceRef:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 1

    .prologue
    .line 6189
    iput-object p1, p0, Landroid/media/AudioService$FmModeStackEntry;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FmModeStackEntry;->mOn:Z

    .line 6182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$FmModeStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 6190
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioService;ZLandroid/os/IBinder;Landroid/media/AudioService$FmModeDeathHandler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p2, "on"    # Z
    .param p3, "source"    # Landroid/os/IBinder;
    .param p4, "hdlr"    # Landroid/media/AudioService$FmModeDeathHandler;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "pn"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 6193
    iput-object p1, p0, Landroid/media/AudioService$FmModeStackEntry;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FmModeStackEntry;->mOn:Z

    .line 6182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$FmModeStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 6194
    iput-boolean p2, p0, Landroid/media/AudioService$FmModeStackEntry;->mOn:Z

    .line 6195
    iput-object p3, p0, Landroid/media/AudioService$FmModeStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 6196
    iput-object p5, p0, Landroid/media/AudioService$FmModeStackEntry;->mClientId:Ljava/lang/String;

    .line 6197
    iput-object p4, p0, Landroid/media/AudioService$FmModeStackEntry;->mHandler:Landroid/media/AudioService$FmModeDeathHandler;

    .line 6198
    iput-object p6, p0, Landroid/media/AudioService$FmModeStackEntry;->mPackageName:Ljava/lang/String;

    .line 6199
    iput p7, p0, Landroid/media/AudioService$FmModeStackEntry;->mCallingUid:I

    .line 6200
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 6220
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 6221
    return-void
.end method

.method public unlinkToDeath()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6203
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in unlinkToDeath pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$FmModeStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6205
    iget-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1, v4}, Landroid/media/AudioService;->setSpeakerfmOn(Z)V

    .line 6206
    iget-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setFmRxMode(Z)V
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;Z)V

    .line 6208
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->mHandler:Landroid/media/AudioService$FmModeDeathHandler;

    if-eqz v1, :cond_0

    .line 6209
    iget-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioService$FmModeStackEntry;->mHandler:Landroid/media/AudioService$FmModeDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6210
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$FmModeStackEntry;->mHandler:Landroid/media/AudioService$FmModeDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6215
    :cond_0
    :goto_0
    return-void

    .line 6212
    :catch_0
    move-exception v0

    .line 6213
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in FmModeStackEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
