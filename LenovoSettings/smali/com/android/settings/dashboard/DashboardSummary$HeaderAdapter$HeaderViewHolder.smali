.class Lcom/android/settings_ex/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field nextIcon:Landroid/view/View;

.field status:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field switch_:Landroid/widget/Switch;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
