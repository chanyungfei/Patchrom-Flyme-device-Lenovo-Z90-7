.class Lcom/android/settings/MasterClear$ResetClickListener;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method private constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MasterClear;Lcom/android/settings/MasterClear$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/MasterClear;
    .param p2, "x1"    # Lcom/android/settings/MasterClear$1;

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear$ResetClickListener;-><init>(Lcom/android/settings/MasterClear;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    const-string v5, "MasterClear"

    const-string v6, "click reset!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v5, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # setter for: Lcom/android/settings/MasterClear;->mPinConfirmed:Z
    invoke-static {v5, v3}, Lcom/android/settings/MasterClear;->access$002(Lcom/android/settings/MasterClear;Z)Z

    .line 567
    iget-object v5, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z
    invoke-static {v5}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 593
    :goto_0
    return v3

    .line 571
    :cond_0
    iget-object v5, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    iget-object v5, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # setter for: Lcom/android/settings/MasterClear;->mWipeCacheAndkeepSdcard:Z
    invoke-static {v5, v3}, Lcom/android/settings/MasterClear;->access$302(Lcom/android/settings/MasterClear;Z)Z

    .line 576
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    const/16 v5, 0x37

    # invokes: Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v3, v5}, Lcom/android/settings/MasterClear;->access$400(Lcom/android/settings/MasterClear;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    const-string v5, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {v3, v5}, Lcom/android/settings/MasterClear;->findApplicationForAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    const-string v3, "MasterClear"

    const-string v5, "backup checked"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->getBackupActivityIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)Landroid/content/Intent;

    move-result-object v2

    .line 581
    .local v2, "intent":Landroid/content/Intent;
    const/16 v0, 0x10

    .line 582
    .local v0, "ExitApplication":I
    :try_start_0
    const-string v3, "flag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    const/16 v5, 0x39

    invoke-virtual {v3, v2, v5}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ExitApplication":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    move v3, v4

    .line 593
    goto :goto_0

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # setter for: Lcom/android/settings/MasterClear;->mWipeCacheAndkeepSdcard:Z
    invoke-static {v3, v4}, Lcom/android/settings/MasterClear;->access$302(Lcom/android/settings/MasterClear;Z)Z

    goto :goto_1

    .line 584
    .restart local v0    # "ExitApplication":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 588
    .end local v0    # "ExitApplication":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "MasterClear"

    const-string v5, "backup not checked"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v3, p0, Lcom/android/settings/MasterClear$ResetClickListener;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->showFinalConfirmation()V
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$700(Lcom/android/settings/MasterClear;)V

    goto :goto_2
.end method
