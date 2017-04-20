.class Lcom/android/server/policy/GlobalActions$13;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1242
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1244
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$1000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1246
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->access$1002(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirModeConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirModeConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$300(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1251
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mAirModeConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->access$302(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1256
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$1900(Lcom/android/server/policy/GlobalActions;)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1260
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$2000(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_0

    .line 1264
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleRebootShow()V
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$2100(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_0

    .line 1267
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$200(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1268
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 1269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
