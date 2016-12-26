.class public Lcom/android/server/am/AppPcServiceResources$id;
.super Ljava/lang/Object;
.source "AppPcServiceResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "id"
.end annotation


# static fields
.field public static checkbox:I

.field public static hint:I

.field public static message:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x102000b

    sput v0, Lcom/android/server/am/AppPcServiceResources$id;->message:I

    .line 50
    const v0, 0x1020005

    sput v0, Lcom/android/server/am/AppPcServiceResources$id;->hint:I

    .line 51
    const v0, 0x1020001

    sput v0, Lcom/android/server/am/AppPcServiceResources$id;->checkbox:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
