.class Lcom/android/server/pm/PackageManagerService$24;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .prologue
    .line 16305
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 16308
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$24;->val$vol:Landroid/os/storage/VolumeInfo;

    # invokes: Lcom/android/server/pm/PackageManagerService;->unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 16309
    return-void
.end method
