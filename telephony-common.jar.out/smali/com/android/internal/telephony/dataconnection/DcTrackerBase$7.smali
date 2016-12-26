.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyEnableConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 2127
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2128
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "notifyEnableConfirm  cb.isChecked true"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2133
    :goto_0
    # setter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mClickButtonByUser:Z
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$402(Z)Z

    .line 2134
    const-string v2, "persist.radio.data.hint"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v2, 0x4201e

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2137
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2138
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2140
    return-void

    .line 2130
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$7;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "notifyEnableConfirm  cb.isChecked is false"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2134
    :cond_1
    const-string v1, "1"

    goto :goto_1
.end method
