.class Lcom/android/server/StartShutdownPolicy$5;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StartShutdownPolicy;
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
    .line 361
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy$5;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$5;->this$0:Lcom/android/server/StartShutdownPolicy;

    # invokes: Lcom/android/server/StartShutdownPolicy;->releaseScreenWakeLock()V
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1400(Lcom/android/server/StartShutdownPolicy;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$5;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1200(Lcom/android/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$5;->this$0:Lcom/android/server/StartShutdownPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownPolicy;->access$302(Lcom/android/server/StartShutdownPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 366
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$5;->this$0:Lcom/android/server/StartShutdownPolicy;

    const/16 v1, 0x1e

    # setter for: Lcom/android/server/StartShutdownPolicy;->mDelay:I
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownPolicy;->access$1502(Lcom/android/server/StartShutdownPolicy;I)I

    .line 367
    return-void
.end method
