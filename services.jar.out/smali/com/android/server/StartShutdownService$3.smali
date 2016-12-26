.class Lcom/android/server/StartShutdownService$3;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StartShutdownService;->loadSettings()V
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
    .line 478
    iput-object p1, p0, Lcom/android/server/StartShutdownService$3;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/StartShutdownService$3;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->setAirplaneModeOff()V
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$600(Lcom/android/server/StartShutdownService;)V

    .line 482
    return-void
.end method
