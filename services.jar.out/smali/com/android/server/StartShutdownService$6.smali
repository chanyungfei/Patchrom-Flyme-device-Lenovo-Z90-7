.class Lcom/android/server/StartShutdownService$6;
.super Landroid/content/BroadcastReceiver;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StartShutdownService;


# direct methods
.method constructor <init>(Lcom/android/server/StartShutdownService;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 585
    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/StartShutdownService;->access$800(Lcom/android/server/StartShutdownService;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 588
    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v10, "ro.lenovo.sim"

    const-string v11, "dsds"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "sim":Ljava/lang/String;
    const-string v10, "dsds"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "ABSENT"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 591
    const-string v10, "slot"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 592
    .local v4, "slot":I
    if-nez v4, :cond_7

    .line 593
    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # setter for: Lcom/android/server/StartShutdownService;->mSimSlot0Absent:Z
    invoke-static {v10, v8}, Lcom/android/server/StartShutdownService;->access$902(Lcom/android/server/StartShutdownService;Z)Z

    .line 594
    const-string v10, "StartShutdownService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSimSlot0Absent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimSlot0Absent:Z
    invoke-static {v12}, Lcom/android/server/StartShutdownService;->access$900(Lcom/android/server/StartShutdownService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v4    # "slot":I
    :cond_2
    :goto_1
    const-string v10, "StartShutdownService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "icc stateExtra:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimReady:Z
    invoke-static {v10}, Lcom/android/server/StartShutdownService;->access$1100(Lcom/android/server/StartShutdownService;)Z

    move-result v2

    .line 602
    .local v2, "old":Z
    const-string v10, "IccCard_INTENT_VALUE_ICC_CARD_IO_ERROR"

    invoke-static {v10}, Lcom/android/server/StartShutdownService;->getConstValueByModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, "strIccCardIOState":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v0, v8

    .line 605
    .local v0, "isIccCardIOError":Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    const-string v11, "ABSENT"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v0, :cond_3

    const-string v11, "LOCKED"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move v9, v8

    :cond_3
    # setter for: Lcom/android/server/StartShutdownService;->mSimReady:Z
    invoke-static {v10, v9}, Lcom/android/server/StartShutdownService;->access$1102(Lcom/android/server/StartShutdownService;Z)Z

    .line 608
    if-nez v2, :cond_4

    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimReady:Z
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$1100(Lcom/android/server/StartShutdownService;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 609
    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$700(Lcom/android/server/StartShutdownService;)V

    .line 612
    :cond_4
    const-string v9, "READY"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 613
    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # setter for: Lcom/android/server/StartShutdownService;->mSimReadyOnce:Z
    invoke-static {v9, v8}, Lcom/android/server/StartShutdownService;->access$1202(Lcom/android/server/StartShutdownService;Z)Z

    .line 615
    :cond_5
    const/4 v1, 0x0

    .line 616
    .local v1, "mShowNoSimDialog":Z
    const-string v9, "dsds"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 617
    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimSlot0Absent:Z
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$900(Lcom/android/server/StartShutdownService;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimSlot1Absent:Z
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$1000(Lcom/android/server/StartShutdownService;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 618
    const/4 v1, 0x1

    .line 625
    :cond_6
    :goto_3
    if-eqz v1, :cond_b

    .line 626
    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->isTeleProduct()Z
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$1300(Lcom/android/server/StartShutdownService;)Z

    move-result v9

    if-eqz v9, :cond_a

    const v7, 0x104008b

    .line 628
    .local v7, "titleResourceId":I
    :goto_4
    # getter for: Lcom/android/server/StartShutdownService;->sBootMode:I
    invoke-static {}, Lcom/android/server/StartShutdownService;->access$1400()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    # getter for: Lcom/android/server/StartShutdownService;->sBootMode:I
    invoke-static {}, Lcom/android/server/StartShutdownService;->access$1400()I

    move-result v9

    if-eq v9, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1500(Lcom/android/server/StartShutdownService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimReadyOnce:Z
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1200(Lcom/android/server/StartShutdownService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    if-nez v8, :cond_0

    .line 632
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/StartShutdownService;->access$400(Lcom/android/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104008c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    # setter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/server/StartShutdownService;->access$1602(Lcom/android/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 639
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 641
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 643
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 644
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v9}, Lcom/android/server/StartShutdownService;->access$1700(Lcom/android/server/StartShutdownService;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 595
    .end local v0    # "isIccCardIOError":Z
    .end local v1    # "mShowNoSimDialog":Z
    .end local v2    # "old":Z
    .end local v6    # "strIccCardIOState":Ljava/lang/String;
    .end local v7    # "titleResourceId":I
    .restart local v4    # "slot":I
    :cond_7
    if-ne v4, v8, :cond_2

    .line 596
    iget-object v10, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # setter for: Lcom/android/server/StartShutdownService;->mSimSlot1Absent:Z
    invoke-static {v10, v8}, Lcom/android/server/StartShutdownService;->access$1002(Lcom/android/server/StartShutdownService;Z)Z

    .line 597
    const-string v10, "StartShutdownService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSimSlot1Absent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSimSlot1Absent:Z
    invoke-static {v12}, Lcom/android/server/StartShutdownService;->access$1000(Lcom/android/server/StartShutdownService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4    # "slot":I
    .restart local v2    # "old":Z
    .restart local v6    # "strIccCardIOState":Ljava/lang/String;
    :cond_8
    move v0, v9

    .line 603
    goto/16 :goto_2

    .line 621
    .restart local v0    # "isIccCardIOError":Z
    .restart local v1    # "mShowNoSimDialog":Z
    :cond_9
    const-string v9, "ABSENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 622
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 626
    :cond_a
    const v7, 0x104008a

    goto/16 :goto_4

    .line 646
    :cond_b
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 647
    iget-object v8, p0, Lcom/android/server/StartShutdownService$6;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/server/StartShutdownService;->access$1600(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0
.end method
