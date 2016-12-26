.class Lcom/android/server/StartShutdownService$7;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 654
    iput-object p1, p0, Lcom/android/server/StartShutdownService$7;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/StartShutdownService$7;->this$0:Lcom/android/server/StartShutdownService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownService;->access$1602(Lcom/android/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 657
    return-void
.end method
