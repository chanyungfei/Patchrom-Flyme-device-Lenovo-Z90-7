.class final Lcom/android/server/policy/GlobalActions$PowerAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 397
    const v0, 0x902006d

    const v1, 0x104011f

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "x1"    # Lcom/android/server/policy/GlobalActions$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 406
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 408
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->access$1002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 412
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 413
    .local v0, "um":Landroid/os/UserManager;
    const-string v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1100(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 417
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$PowerAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1100(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 436
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method
