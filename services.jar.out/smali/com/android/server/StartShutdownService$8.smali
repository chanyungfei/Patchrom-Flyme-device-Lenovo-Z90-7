.class Lcom/android/server/StartShutdownService$8;
.super Landroid/telephony/PhoneStateListener;
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
    .line 660
    iput-object p1, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # setter for: Lcom/android/server/StartShutdownService;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/android/server/StartShutdownService;->access$2002(Lcom/android/server/StartShutdownService;I)I

    .line 671
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPhoneState:I
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$2000(Lcom/android/server/StartShutdownService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$2100(Lcom/android/server/StartShutdownService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$700(Lcom/android/server/StartShutdownService;)V

    .line 674
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownService;->access$2102(Lcom/android/server/StartShutdownService;Z)Z

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$2200(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$2200(Lcom/android/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 679
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownService;->access$2102(Lcom/android/server/StartShutdownService;Z)Z

    .line 680
    iget-object v0, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownService;->access$2202(Lcom/android/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->hasService()Z
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$1800(Lcom/android/server/StartShutdownService;)Z

    move-result v0

    .line 663
    .local v0, "old":Z
    iget-object v1, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # setter for: Lcom/android/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/android/server/StartShutdownService;->access$1902(Lcom/android/server/StartShutdownService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 664
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->hasService()Z
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$1800(Lcom/android/server/StartShutdownService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/server/StartShutdownService$8;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$700(Lcom/android/server/StartShutdownService;)V

    .line 667
    :cond_0
    return-void
.end method
