.class Lcom/android/server/InputMethodManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 941
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 936
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/InputMethodManagerService;->access$900(Lcom/android/server/InputMethodManagerService;I)V

    .line 925
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    if-eqz p2, :cond_0

    .line 928
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 925
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 929
    :catch_0
    move-exception v0

    goto :goto_0
.end method
