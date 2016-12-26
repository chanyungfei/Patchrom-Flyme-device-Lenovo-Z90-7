.class public final Landroid/app/AlarmManager$AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmPolicy"
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public policy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "policy"    # I

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Landroid/app/AlarmManager$AlarmPolicy;->app:Ljava/lang/String;

    .line 737
    iput p2, p0, Landroid/app/AlarmManager$AlarmPolicy;->policy:I

    .line 738
    return-void
.end method
