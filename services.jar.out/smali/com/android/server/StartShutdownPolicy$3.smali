.class Lcom/android/server/StartShutdownPolicy$3;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StartShutdownPolicy;->showAutoShutdownAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StartShutdownPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy$3;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$3;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1100(Lcom/android/server/StartShutdownPolicy;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$3;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1100(Lcom/android/server/StartShutdownPolicy;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$3;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1200(Lcom/android/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    return-void
.end method
