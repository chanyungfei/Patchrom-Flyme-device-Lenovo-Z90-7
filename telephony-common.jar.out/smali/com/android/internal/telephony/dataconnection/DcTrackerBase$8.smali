.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 2171
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "mOpenDataSwitcherDialog -Dismiss"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2173
    # getter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mClickButtonByUser:Z
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "mOpenDataSwitcherDialog -Dismiss and user not click button, write mobile data disabled."

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2175
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data0"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2176
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2180
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.MOBILE_TYPE_CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2181
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$8;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2184
    return-void

    .line 2178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    # setter for: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mClickButtonByUser:Z
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$402(Z)Z

    goto :goto_0
.end method
