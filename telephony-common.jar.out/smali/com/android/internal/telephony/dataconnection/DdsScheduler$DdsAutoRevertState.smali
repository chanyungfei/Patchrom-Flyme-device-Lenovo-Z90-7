.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DdsAutoRevertState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[DdsAutoRevertState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mIsInterruptBySetDefaultSubId:Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "Enter just transimit to idle state"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mIsInterruptBySetDefaultSubId:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1902(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Z)Z

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 662
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getOnDemandDataSubId()I

    move-result v0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 655
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "dds not change, not need doPsAttach"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$3000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->triggerSwitch(Landroid/net/NetworkRequest;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 666
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 683
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 673
    :pswitch_0
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "SET_DDS_DONE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 676
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$3100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 679
    const/4 v0, 0x1

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x84003
        :pswitch_0
    .end packed-switch
.end method
