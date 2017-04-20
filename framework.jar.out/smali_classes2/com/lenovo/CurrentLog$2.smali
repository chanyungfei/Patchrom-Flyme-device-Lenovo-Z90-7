.class Lcom/lenovo/CurrentLog$2;
.super Landroid/content/BroadcastReceiver;
.source "CurrentLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/CurrentLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/CurrentLog;


# direct methods
.method constructor <init>(Lcom/lenovo/CurrentLog;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/CurrentLog$2;->this$0:Lcom/lenovo/CurrentLog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 114
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/lenovo/CurrentLog$2;->this$0:Lcom/lenovo/CurrentLog;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/CurrentLog;->mIsCharging:Z
    invoke-static {v0, v1}, Lcom/lenovo/CurrentLog;->access$202(Lcom/lenovo/CurrentLog;Z)Z

    .line 117
    iget-object v0, p0, Lcom/lenovo/CurrentLog$2;->this$0:Lcom/lenovo/CurrentLog;

    invoke-virtual {v0}, Lcom/lenovo/CurrentLog;->disableLog()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/CurrentLog$2;->this$0:Lcom/lenovo/CurrentLog;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/CurrentLog;->mIsCharging:Z
    invoke-static {v0, v1}, Lcom/lenovo/CurrentLog;->access$202(Lcom/lenovo/CurrentLog;Z)Z

    .line 120
    iget-object v0, p0, Lcom/lenovo/CurrentLog$2;->this$0:Lcom/lenovo/CurrentLog;

    invoke-virtual {v0}, Lcom/lenovo/CurrentLog;->enableLog()V

    goto :goto_0
.end method
