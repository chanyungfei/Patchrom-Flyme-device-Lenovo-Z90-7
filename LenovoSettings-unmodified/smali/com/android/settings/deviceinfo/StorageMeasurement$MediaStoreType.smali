.class public Lcom/android/settings/deviceinfo/StorageMeasurement$MediaStoreType;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStoreType"
.end annotation


# instance fields
.field mMediaType:[I

.field mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mediaType"    # [I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MediaStoreType;->mType:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MediaStoreType;->mMediaType:[I

    .line 140
    return-void
.end method
