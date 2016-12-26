.class Lcom/android/server/MountService$MountServiceUIHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceUIHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 619
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 653
    const-string v4, "MountService"

    const-string v5, "Unknown Message to handle in MountServiceUIHandler"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 656
    return-void

    .line 621
    :pswitch_0
    const-string v4, "MountService"

    const-string v6, "Popup the reboot dialog"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/MountService$MountServiceUIHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    .local v0, "mBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x10406f0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 624
    const v4, 0x10406f1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 625
    const v4, 0x10406f2

    new-instance v6, Lcom/android/server/MountService$MountServiceUIHandler$1;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$MountServiceUIHandler$1;-><init>(Lcom/android/server/MountService$MountServiceUIHandler;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 632
    .local v1, "mDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 633
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 636
    .end local v0    # "mBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "mDialog":Landroid/app/Dialog;
    :pswitch_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 639
    .local v2, "pms":Landroid/os/IPowerManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v2, v4, v5, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v4

    goto :goto_0

    .line 645
    .end local v2    # "pms":Landroid/os/IPowerManager;
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 646
    .local v3, "pop":I
    iget-object v6, p0, Lcom/android/server/MountService$MountServiceUIHandler;->this$0:Lcom/android/server/MountService;

    if-ne v3, v4, :cond_0

    :goto_1
    # invokes: Lcom/android/server/MountService;->NotifiedSD(Z)V
    invoke-static {v6, v4}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    .line 649
    .end local v3    # "pop":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/MountService$MountServiceUIHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->showSdcardWarningDlg()V
    invoke-static {v4}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
