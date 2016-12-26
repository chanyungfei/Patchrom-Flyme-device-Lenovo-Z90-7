.class final Landroid/app/ContextImpl$64;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 785
    const-string/jumbo v2, "start_shutdown"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 786
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IStartShutdownManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStartShutdownManager;

    move-result-object v1

    .line 787
    .local v1, "service":Landroid/app/IStartShutdownManager;
    new-instance v2, Landroid/app/StartShutdownManager;

    invoke-direct {v2, v1}, Landroid/app/StartShutdownManager;-><init>(Landroid/app/IStartShutdownManager;)V

    return-object v2
.end method
