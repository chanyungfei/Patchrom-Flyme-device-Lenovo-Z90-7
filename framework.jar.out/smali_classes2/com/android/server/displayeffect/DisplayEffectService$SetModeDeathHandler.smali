.class Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "DisplayEffectService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/displayeffect/DisplayEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/displayeffect/DisplayEffectService;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 1
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mMode:I

    .line 328
    iput-object p2, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 329
    iput p3, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPid:I

    .line 330
    iput-object p4, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    .line 331
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    .prologue
    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/displayeffect/DisplayEffectService;->access$000(Lcom/android/server/displayeffect/DisplayEffectService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 338
    :try_start_0
    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/displayeffect/DisplayEffectService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "setMode() client died."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/displayeffect/DisplayEffectService;->access$000(Lcom/android/server/displayeffect/DisplayEffectService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 340
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 341
    # getter for: Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/displayeffect/DisplayEffectService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v6, "unregistered setMode() client died."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    if-eqz v3, :cond_1

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 352
    .local v0, "ident":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    .end local v0    # "ident":J
    :cond_1
    return-void

    .line 344
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    const-string v6, "com.lenovo.screensettings"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->this$0:Lcom/android/server/displayeffect/DisplayEffectService;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPid:I

    iget-object v9, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 348
    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 363
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->mMode:I

    .line 364
    return-void
.end method
